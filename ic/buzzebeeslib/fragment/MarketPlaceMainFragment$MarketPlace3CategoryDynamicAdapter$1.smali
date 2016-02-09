.class Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3CategoryDynamicAdapter$1;
.super Ljava/lang/Object;
.source "MarketPlaceMainFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3CategoryDynamicAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3CategoryDynamicAdapter;

.field private final synthetic val$category:Lic/buzzebeeslib/bean/CampaignCategory;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3CategoryDynamicAdapter;Lic/buzzebeeslib/bean/CampaignCategory;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3CategoryDynamicAdapter$1;->this$1:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3CategoryDynamicAdapter;

    iput-object p2, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3CategoryDynamicAdapter$1;->val$category:Lic/buzzebeeslib/bean/CampaignCategory;

    .line 779
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 16
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 783
    :try_start_0
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3CategoryDynamicAdapter$1;->val$category:Lic/buzzebeeslib/bean/CampaignCategory;

    if-eqz v0, :cond_7f

    .line 784
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3CategoryDynamicAdapter$1;->this$1:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3CategoryDynamicAdapter;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3CategoryDynamicAdapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3CategoryDynamicAdapter;->access$0(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3CategoryDynamicAdapter;)Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;

    move-result-object v0

    # invokes: Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->resetFilter()V
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->access$10(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;)V

    .line 786
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3CategoryDynamicAdapter$1;->val$category:Lic/buzzebeeslib/bean/CampaignCategory;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lic/buzzebeeslib/bean/CampaignCategory;->IsSelected:Z

    .line 787
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3CategoryDynamicAdapter$1;->this$1:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3CategoryDynamicAdapter;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3CategoryDynamicAdapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3CategoryDynamicAdapter;->access$0(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3CategoryDynamicAdapter;)Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;

    move-result-object v0

    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3CategoryDynamicAdapter$1;->val$category:Lic/buzzebeeslib/bean/CampaignCategory;

    iget-object v1, v1, Lic/buzzebeeslib/bean/CampaignCategory;->Cat:Ljava/lang/String;

    invoke-static {v0, v1}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->access$11(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;Ljava/lang/String;)V

    .line 789
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3CategoryDynamicAdapter$1;->this$1:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3CategoryDynamicAdapter;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3CategoryDynamicAdapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3CategoryDynamicAdapter;->access$0(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3CategoryDynamicAdapter;)Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;

    move-result-object v0

    invoke-virtual {v0}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v11

    .line 791
    .local v11, "fm":Landroid/support/v4/app/FragmentManager;
    if-eqz v11, :cond_76

    .line 792
    invoke-virtual {v11}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v12

    .line 793
    .local v12, "ft":Landroid/support/v4/app/FragmentTransaction;
    sget v13, Lic/buzzebeeslib/R$idMarketPlace3Fragment;->fragment_tab:I

    new-instance v0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;

    const-string v1, ""

    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3CategoryDynamicAdapter$1;->this$1:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3CategoryDynamicAdapter;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3CategoryDynamicAdapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;
    invoke-static {v2}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3CategoryDynamicAdapter;->access$0(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3CategoryDynamicAdapter;)Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;

    move-result-object v2

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gCurrentFilterCategory:Ljava/lang/String;
    invoke-static {v2}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->access$12(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3CategoryDynamicAdapter$1;->val$category:Lic/buzzebeeslib/bean/CampaignCategory;

    iget-object v3, v3, Lic/buzzebeeslib/bean/CampaignCategory;->Name:Ljava/lang/String;

    const-wide/16 v4, -0x1

    iget-object v6, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3CategoryDynamicAdapter$1;->this$1:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3CategoryDynamicAdapter;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3CategoryDynamicAdapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;
    invoke-static {v6}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3CategoryDynamicAdapter;->access$0(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3CategoryDynamicAdapter;)Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;

    move-result-object v6

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gCurrentFilterCenter:Ljava/lang/String;
    invoke-static {v6}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->access$13(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3CategoryDynamicAdapter$1;->this$1:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3CategoryDynamicAdapter;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3CategoryDynamicAdapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;
    invoke-static {v7}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3CategoryDynamicAdapter;->access$0(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3CategoryDynamicAdapter;)Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;

    move-result-object v7

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gCurrentFilterMode:Ljava/lang/String;
    invoke-static {v7}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->access$7(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3CategoryDynamicAdapter$1;->this$1:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3CategoryDynamicAdapter;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3CategoryDynamicAdapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;
    invoke-static {v8}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3CategoryDynamicAdapter;->access$0(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3CategoryDynamicAdapter;)Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;

    move-result-object v8

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gCurrentFilterSponsor:Ljava/lang/String;
    invoke-static {v8}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->access$14(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3CategoryDynamicAdapter$1;->this$1:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3CategoryDynamicAdapter;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3CategoryDynamicAdapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;
    invoke-static {v9}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3CategoryDynamicAdapter;->access$0(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3CategoryDynamicAdapter;)Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;

    move-result-object v9

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gCurrentFilterPlace:Ljava/lang/String;
    invoke-static {v9}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->access$15(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;)Ljava/lang/String;

    move-result-object v9

    invoke-direct/range {v0 .. v9}, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v13, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 794
    invoke-virtual {v12}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 797
    .end local v12    # "ft":Landroid/support/v4/app/FragmentTransaction;
    :cond_76
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3CategoryDynamicAdapter$1;->this$1:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3CategoryDynamicAdapter;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3CategoryDynamicAdapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3CategoryDynamicAdapter;->access$0(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3CategoryDynamicAdapter;)Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;

    move-result-object v0

    # invokes: Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->hideRightMenu()V
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->access$1(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;)V
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7f} :catch_80

    .line 802
    .end local v11    # "fm":Landroid/support/v4/app/FragmentManager;
    :cond_7f
    :goto_7f
    return-void

    .line 799
    :catch_80
    move-exception v10

    .line 800
    .local v10, "e":Ljava/lang/Exception;
    const-string v0, "buzzebees.market"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error while click category:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7f
.end method
