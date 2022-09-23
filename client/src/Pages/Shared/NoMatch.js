import { useLocation } from "react-router-dom"

const NoMatch = () => {
  const {pathname} = useLocation()
  console.log(pathname)
  return(
    <div>
      <h1>404 Page not found</h1>
      <h1>Please check path : {pathname}</h1>
    </div>
  )
}

export default NoMatch