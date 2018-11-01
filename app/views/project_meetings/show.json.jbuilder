# json.partial! "project_meetings/project_meeting", project_meeting: @project_meeting

json.extract! @project_meeting, :id, :project_id, :absentee, :project_meeting_memo, :project_meeting_upload_at, :project_meeting_photo,  :created_at, :updated_at