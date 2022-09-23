import { useLocation } from "react-router-dom"


const Marathon = () => {
  const loc = useLocation()
  const {name, distance, time, date} = loc.state
  return(
    <div>
      <h1>{name}</h1>
      <h3>Distance of Race: {distance} km</h3>
      
    </div>
  )
}

export default Marathon