.class Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3TypeDynamicAdapter$1;
.super Ljava/lang/Object;
.source "MarketPlaceMainFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3TypeDynamicAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3TypeDynamicAdapter;

.field private final synthetic val$categoryType:Lic/buzzebeeslib/bean/CampaignType;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3TypeDynamicAdapter;Lic/buzzebeeslib/bean/CampaignType;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3TypeDynamicAdapter$1;->this$1:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3TypeDynamicAdapter;

    iput-object p2, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3TypeDynamicAdapter$1;->val$categoryType:Lic/buzzebeeslib/bean/CampaignType;

    .line 710
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 714
    :try_start_0
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3TypeDynamicAdapter$1;->val$categoryType:Lic/buzzebeeslib/bean/CampaignType;

    if-eqz v1, :cond_19

    .line 715
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3TypeDynamicAdapter$1;->val$categoryType:Lic/buzzebeeslib/bean/CampaignType;

    iget-object v1, v1, Lic/buzzebeeslib/bean/CampaignType;->mode:Ljava/lang/String;

    const-string v2, "nearby"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 716
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3TypeDynamicAdapter$1;->this$1:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3TypeDynamicAdapter;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3TypeDynamicAdapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;
    invoke-static {v1}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3TypeDynamicAdapter;->access$0(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3TypeDynamicAdapter;)Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;

    move-result-object v1

    # invokes: Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->doFilterNearBy()V
    invoke-static {v1}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->access$8(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;)V

    .line 724
    :cond_19
    :goto_19
    return-void

    .line 718
    :cond_1a
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3TypeDynamicAdapter$1;->this$1:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3TypeDynamicAdapter;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3TypeDynamicAdapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;
    invoke-static {v1}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3TypeDynamicAdapter;->access$0(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3TypeDynamicAdapter;)Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;

    move-result-object v1

    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3TypeDynamicAdapter$1;->val$categoryType:Lic/buzzebeeslib/bean/CampaignType;

    iget-object v2, v2, Lic/buzzebeeslib/bean/CampaignType;->mode:Ljava/lang/String;

    # invokes: Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->doFilterByType(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->access$9(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_27} :catch_28

    goto :goto_19

    .line 721
    :catch_28
    move-exception v0

    .line 722
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "buzzebees.market"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error while click type:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lic/buzzebeeslib/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19
.end method
