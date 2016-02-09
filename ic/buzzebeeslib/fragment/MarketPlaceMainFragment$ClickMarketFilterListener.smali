.class Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$ClickMarketFilterListener;
.super Ljava/lang/Object;
.source "MarketPlaceMainFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClickMarketFilterListener"
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;


# direct methods
.method private constructor <init>(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;)V
    .registers 2

    .prologue
    .line 368
    iput-object p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$ClickMarketFilterListener;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$ClickMarketFilterListener;)V
    .registers 3

    .prologue
    .line 368
    invoke-direct {p0, p1}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$ClickMarketFilterListener;-><init>(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 371
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$ClickMarketFilterListener;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gIsMenuExpanded:Z
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->access$0(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 372
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$ClickMarketFilterListener;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;

    # invokes: Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->hideRightMenu()V
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->access$1(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;)V

    .line 379
    :cond_d
    :goto_d
    return-void

    .line 374
    :cond_e
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$ClickMarketFilterListener;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gTabFragment:Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->access$2(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;)Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 377
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$ClickMarketFilterListener;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;

    # invokes: Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->showRightMenu()V
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->access$3(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;)V

    goto :goto_d
.end method
