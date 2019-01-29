require 'sinatra/base'
module EtFakeCcd
  class Server < Sinatra::Base
    post '/testing-support/lease' do
      boom!
    end

    get '/caseworkers/{uid}/jurisdictions/{jid}/case-types/{ctid}/event-triggers/{etid}/token' do
      content_type "application/json"
      <<-EOS
        {"token":"eyJhbGciOiJIUzI1NiJ9.eyJqdGkiOiIyYnQ3cmZxOGRxZ3ZhMjEwbGVucmdoc2Q0YSIsInN1YiI6IjM4IiwiaWF0IjoxNTQ4MjU2MDEwLCJldmVudC1pZCI6ImluaXRpYXRlQ2FzZSIsImNhc2UtdHlwZS1pZCI6IlRSSUJfTVZQXzNfVFlQRSIsImp1cmlzZGljdGlvbi1pZCI6IlBVQkxJQ0xBVyIsImNhc2UtdmVyc2lvbiI6ImJmMjFhOWU4ZmJjNWEzODQ2ZmIwNWI0ZmEwODU5ZTA5MTdiMjIwMmYifQ.inU5j8WrBe1dX4qqZn0cv74ElIK2v5VaQd96RRTz2v4","case_details":{"id":null,"jurisdiction":"PUBLICLAW","state":null,"case_type_id":"TRIB_MVP_3_TYPE","created_date":null,"last_modified":null,"security_classification":null,"case_data":{},"data_classification":{},"after_submit_callback_response":null,"callback_response_status_code":null,"callback_response_status":null,"delete_draft_response_status_code":null,"delete_draft_response_status":null,"security_classifications":{}},"event_id":"initiateCase"}
      EOS
    end

    post '/caseworkers/{uid}/jurisdictions/{jid}/case-types/{ctid}/cases' do
      content_type 'application/json'
      {
        id: 1548256244141912,
        jurisdiction: params[:jid],
        state: "1_Initiation",
        case_type_id: params[:ctid],
        created_date: Time.zone.now.strftime('%Y-%m-%dT%H:%M:%S.%L'),
        last_modified: Time.zone.now.strftime('%Y-%m-%dT%H:%M:%S.%L'),
        security_classification: "PUBLIC",
        case_data: {
          feeGroupReference: "2220000000100",
          caseNote: "sdsd",
          representedType: {
            if_represented: "No"
          },
          claimantType: {
            claimant_title: "Mr",
            claimant_first_name: "Gary",
            claimant_initials: nil,
            claimant_last_name: "Taylor",
            claimant_date_of_birth: nil,
            claimant_gender: "",
            claimant_addressUK: {
              AddressLine1: nil,
              AddressLine2: nil,
              AddressLine3: nil,
              PostTown: nil,
              County: nil,
              PostCode: nil,
              Country: nil
            },
            claimant_phone_number: nil,
            claimant_mobile_number: nil,
            claimant_fax_number: nil,
            claimant_email_address: nil,
            claimant_contact_preference: ""
          },
          receiptDate: "2017-01-01",
          respondentCollection: [],
          caseAssignee: "Bristol",
          respondentType: {
            respondent_name: nil,
            respondent_address: {
              AddressLine1: nil,
              AddressLine2: nil,
              AddressLine3: nil,
              PostTown: nil,
              County: nil,
              PostCode: nil,
              Country: nil
            },
            respondent_phone1: nil,
            respondent_phone2: nil,
            respondent_fax: nil,
            respondent_email: nil,
            respondent_contact_preference: ""
          },
          caseType: "Single"
        },
        data_classification: {
          feeGroupReference: "PUBLIC",
          caseNote: "PUBLIC",
          representedType: {
            classification: "PUBLIC",
            value: {
              if_represented: "PUBLIC"
            }
          },
          claimantType: {
            classification: "PUBLIC",
            value: {
              claimant_title: "PUBLIC",
              claimant_first_name: "PUBLIC",
              claimant_initials: "PUBLIC",
              claimant_last_name: "PUBLIC",
              claimant_date_of_birth: "PUBLIC",
              claimant_gender: "PUBLIC",
              claimant_addressUK: {
                classification: "PUBLIC",
                value: {
                  AddressLine1: "PUBLIC",
                  AddressLine2: "PUBLIC",
                  AddressLine3: "PUBLIC",
                  PostTown: "PUBLIC",
                  County: "PUBLIC",
                  PostCode: "PUBLIC",
                  Country: "PUBLIC"
                }
              },
              claimant_phone_number: "PUBLIC",
              claimant_mobile_number: "PUBLIC",
              claimant_fax_number: "PUBLIC",
              claimant_email_address: "PUBLIC",
              claimant_contact_preference: "PUBLIC"
            }
          },
          receiptDate: "PUBLIC",
          respondentCollection: {
            classification: "PUBLIC",
            value: []
          },
          caseAssignee: "PUBLIC",
          respondentType: {
            classification: "PUBLIC",
            value: {
              respondent_name: "PUBLIC",
              respondent_address: {
                classification: "PUBLIC",
                value: {
                  AddressLine1: "PUBLIC",
                  AddressLine2: "PUBLIC",
                  AddressLine3: "PUBLIC",
                  PostTown: "PUBLIC",
                  County: "PUBLIC",
                  PostCode: "PUBLIC",
                  Country: "PUBLIC"
                }
              },
              respondent_phone1: "PUBLIC",
              respondent_phone2: "PUBLIC",
              respondent_fax: "PUBLIC",
              respondent_email: "PUBLIC",
              respondent_contact_preference: "PUBLIC"
            }
          },
          caseType: "PUBLIC"
        },
        after_submit_callback_response: nil,
        callback_response_status_code: nil,
        callback_response_status: nil,
        delete_draft_response_status_code: nil,
        delete_draft_response_status: nil,
        security_classifications: {
          feeGroupReference: "PUBLIC",
          caseNote: "PUBLIC",
          representedType: {
            classification: "PUBLIC",
            value: {
              if_represented: "PUBLIC"
            }
          },
          claimantType: {
            classification: "PUBLIC",
            value: {
              claimant_title: "PUBLIC",
              claimant_first_name: "PUBLIC",
              claimant_initials: "PUBLIC",
              claimant_last_name: "PUBLIC",
              claimant_date_of_birth: "PUBLIC",
              claimant_gender: "PUBLIC",
              claimant_addressUK: {
                classification: "PUBLIC",
                value: {
                  AddressLine1: "PUBLIC",
                  AddressLine2: "PUBLIC",
                  AddressLine3: "PUBLIC",
                  PostTown: "PUBLIC",
                  County: "PUBLIC",
                  PostCode: "PUBLIC",
                  Country: "PUBLIC"
                }
              },
              claimant_phone_number: "PUBLIC",
              claimant_mobile_number: "PUBLIC",
              claimant_fax_number: "PUBLIC",
              claimant_email_address: "PUBLIC",
              claimant_contact_preference: "PUBLIC"
            }
          },
          receiptDate: "PUBLIC",
          respondentCollection: {
            classification: "PUBLIC",
            value: []
          },
          caseAssignee: "PUBLIC",
          respondentType: {
            classification: "PUBLIC",
            value: {
              respondent_name: "PUBLIC",
              respondent_address: {
                classification: "PUBLIC",
                value: {
                  AddressLine1: "PUBLIC",
                  AddressLine2: "PUBLIC",
                  AddressLine3: "PUBLIC",
                  PostTown: "PUBLIC",
                  County: "PUBLIC",
                  PostCode: "PUBLIC",
                  Country: "PUBLIC"
                }
              },
              respondent_phone1: "PUBLIC",
              respondent_phone2: "PUBLIC",
              respondent_fax: "PUBLIC",
              respondent_email: "PUBLIC",
              respondent_contact_preference: "PUBLIC"
            }
          },
          caseType: "PUBLIC"
        }
      }.to_json
    end
  end
end
