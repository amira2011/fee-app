class ReceiptsController < ApplicationController


def new
  @receipt =Receipt.new
  @student=Student.first
  @receipt_no=Receipt.maximum(:id).to_i+1
  @time=  ist Time.new
  @time1= @time.strftime("%Y-%m-%d")
  print(@time1)
  @time= @time.year
  @receipt_no= "EN".concat(@time.to_s,@receipt_no.to_s)

end

def create
  redirect_to students_path
end

def ist(time)
  time.in_time_zone(TZInfo::Timezone.get('Asia/Kolkata'))
end


end
