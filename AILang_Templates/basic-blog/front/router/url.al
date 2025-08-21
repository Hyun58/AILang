in BlogList from "front/components/BlogList"
in BlogDetail from "front/components/BlogDetail"
in WritePost from "front/components/WritePost"

url
    "/" to BlogList
    "/post/:id" to BlogDetail
    "/write" to WritePost
end

out url
