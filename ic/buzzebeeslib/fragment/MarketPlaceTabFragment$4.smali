.class Lic/buzzebeeslib/fragment/MarketPlaceTabFragment$4;
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
    iput-object p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment$4;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;

    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/fragment/MarketPlaceTabFragment$4;)Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;
    .registers 2

    .prologue
    .line 288
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment$4;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 292
    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->access$1()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onClick gotoDealListView"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment$4;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabDeal1:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->access$7(Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;)Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment$4$1;

    invoke-direct {v1, p0}, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment$4$1;-><init>(Lic/buzzebeeslib/fragment/MarketPlaceTabFragment$4;)V

    .line 306
    const-wide/16 v2, 0x1f4

    .line 295
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 307
    return-void
.end method
