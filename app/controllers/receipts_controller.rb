class ReceiptsController < ApplicationController


def new
  @sa=Student.all
  @names = Array.new
      @sa.each do |s|
            @names.push(s.name)
      end



if params[:name].present?

   @student= Student.where(name: params[:name]).first


end





  @receipt =Receipt.new
  @receipt_no=Receipt.maximum(:id).to_i+1
  @time=  ist Time.new
  @time1= @time.strftime("%Y-%m-%d")
  print(@time1)
  @time= @time.year
  @receipt_no= "EN".concat(@time.to_s,@receipt_no.to_s)

end

def create
  @receipt = Receipt.new(receipt_params)

   if @receipt.save
      redirect_to root_path
   else

    redirect_to search_path
   end
end

def ist(time)
  time.in_time_zone(TZInfo::Timezone.get('Asia/Kolkata'))
end

def receipt_params
      params.require(:receipt).permit(:student_id, :receipt_no, :receipt_date, :academic_year, :tution_fee, :devlopment_fee, :other_fee, :total, :status)
end


end
