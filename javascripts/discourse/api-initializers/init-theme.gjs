import { apiInitializer } from "discourse/lib/api";
import CustomWelcomeBanner from "../components/custom-welcome-banner";

export default apiInitializer((api) => {
  api.renderInOutlet("discovery-navigation-bar-above", CustomWelcomeBanner, {
  show() {
    // true only on category page
    return api.getCurrentRouteName() === "discovery.category";
  }
});
});
