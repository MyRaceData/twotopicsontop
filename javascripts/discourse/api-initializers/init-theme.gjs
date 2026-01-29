import { apiInitializer } from "discourse/lib/api";
import CustomWelcomeBanner from "../components/custom-welcome-banner";

export default apiInitializer((api) => {
  api.renderInOutlet("above-main-container", CustomWelcomeBanner);
});
