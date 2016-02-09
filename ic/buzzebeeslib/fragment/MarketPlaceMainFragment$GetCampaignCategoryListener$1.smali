.class Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$GetCampaignCategoryListener$1;
.super Ljava/lang/Object;
.source "MarketPlaceMainFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$GetCampaignCategoryListener;->onComplete(ILjava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$GetCampaignCategoryListener;

.field private final synthetic val$response_text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$GetCampaignCategoryListener;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$GetCampaignCategoryListener$1;->this$1:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$GetCampaignCategoryListener;

    iput-object p2, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$GetCampaignCategoryListener$1;->val$response_text:Ljava/lang/String;

    .line 474
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 476
    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$GetCampaignCategoryListener$1;->this$1:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$GetCampaignCategoryListener;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$GetCampaignCategoryListener;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;
    invoke-static {v3}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$GetCampaignCategoryListener;->access$1(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$GetCampaignCategoryListener;)Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;

    move-result-object v3

    iget-object v4, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$GetCampaignCategoryListener$1;->val$response_text:Ljava/lang/String;

    # invokes: Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->ProcessJsonCampaignCategory(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->access$4(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;Ljava/lang/String;)V

    .line 479
    :try_start_b
    const-string v1, ""
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_d} :catch_48

    .line 481
    .local v1, "cat":Ljava/lang/String;
    :try_start_d
    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$GetCampaignCategoryListener$1;->this$1:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$GetCampaignCategoryListener;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$GetCampaignCategoryListener;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;
    invoke-static {v3}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$GetCampaignCategoryListener;->access$1(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$GetCampaignCategoryListener;)Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;

    move-result-object v3

    invoke-virtual {v3}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 482
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_1f

    .line 483
    const-string v3, "cat"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1e} :catch_44

    move-result-object v1

    .line 489
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_1f
    :goto_1f
    if-eqz v1, :cond_32

    :try_start_21
    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_32

    .line 490
    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$GetCampaignCategoryListener$1;->this$1:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$GetCampaignCategoryListener;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$GetCampaignCategoryListener;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;
    invoke-static {v3}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$GetCampaignCategoryListener;->access$1(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$GetCampaignCategoryListener;)Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;

    move-result-object v3

    # invokes: Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->doOpenByCat(Ljava/lang/String;)V
    invoke-static {v3, v1}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->access$5(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;Ljava/lang/String;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_32} :catch_48

    .line 496
    .end local v1    # "cat":Ljava/lang/String;
    :cond_32
    :goto_32
    const-string v3, "campaign_category_all"

    iget-object v4, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$GetCampaignCategoryListener$1;->val$response_text:Ljava/lang/String;

    iget-object v5, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$GetCampaignCategoryListener$1;->this$1:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$GetCampaignCategoryListener;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$GetCampaignCategoryListener;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;
    invoke-static {v5}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$GetCampaignCategoryListener;->access$1(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$GetCampaignCategoryListener;)Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;

    move-result-object v5

    invoke-virtual {v5}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lic/buzzebeeslib/util/LocalFileHelper;->saveCatchToSD(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 497
    return-void

    .line 485
    .restart local v1    # "cat":Ljava/lang/String;
    :catch_44
    move-exception v2

    .line 486
    .local v2, "e":Ljava/lang/Exception;
    :try_start_45
    const-string v1, ""
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_47} :catch_48

    goto :goto_1f

    .line 492
    .end local v1    # "cat":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_48
    move-exception v3

    goto :goto_32
.end method
