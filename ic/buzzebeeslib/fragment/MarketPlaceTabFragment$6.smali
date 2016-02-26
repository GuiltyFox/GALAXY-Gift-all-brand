.class Lic/buzzebeeslib/fragment/MarketPlaceTabFragment$6;
.super Ljava/lang/Object;
.source "MarketPlaceTabFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment$6;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;

    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 343
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment$6;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;

    # invokes: Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gotoAllListView()V
    invoke-static {v1}, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->access$9(Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;)V

    .line 345
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment$6;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;

    invoke-virtual {v1}, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lic/buzzebeeslib/activity/MarketPlaceActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 346
    const-string v1, "buzzebees.market.fragment"

    const-string v2, "if (getActivity().getClass().getName().equals(MarketPlaceActivity.class.getName())) {"

    invoke-static {v1, v2}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment$6;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;

    invoke-virtual {v1}, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lic/buzzebeeslib/activity/MarketPlaceActivity;

    .line 348
    .local v0, "objMarketPlaceActivity":Lic/buzzebeeslib/activity/MarketPlaceActivity;
    invoke-virtual {v0}, Lic/buzzebeeslib/activity/MarketPlaceActivity;->doResetMarketSearch()V

    .line 350
    .end local v0    # "objMarketPlaceActivity":Lic/buzzebeeslib/activity/MarketPlaceActivity;
    :cond_31
    return-void
.end method
