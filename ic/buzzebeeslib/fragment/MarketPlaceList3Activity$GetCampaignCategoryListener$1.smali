.class Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$GetCampaignCategoryListener$1;
.super Ljava/lang/Object;
.source "MarketPlaceList3Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$GetCampaignCategoryListener;->onSuccess(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$GetCampaignCategoryListener;

.field private final synthetic val$response_text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$GetCampaignCategoryListener;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$GetCampaignCategoryListener$1;->this$1:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$GetCampaignCategoryListener;

    iput-object p2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$GetCampaignCategoryListener$1;->val$response_text:Ljava/lang/String;

    .line 1583
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 1585
    const/4 v1, 0x0

    .line 1587
    .local v1, "needRefresh":Z
    const-string v3, "category_buzzebees_lib"

    iget-object v4, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$GetCampaignCategoryListener$1;->this$1:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$GetCampaignCategoryListener;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$GetCampaignCategoryListener;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;
    invoke-static {v4}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$GetCampaignCategoryListener;->access$0(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$GetCampaignCategoryListener;)Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    move-result-object v4

    invoke-virtual {v4}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lic/buzzebeeslib/util/LocalFileHelper;->readCatchFromSD(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1588
    .local v0, "catch_category":Ljava/lang/String;
    if-eqz v0, :cond_67

    .line 1589
    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$GetCampaignCategoryListener$1;->val$response_text:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_65

    .line 1590
    const/4 v1, 0x0

    .line 1598
    :goto_1c
    if-eqz v1, :cond_64

    .line 1599
    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$GetCampaignCategoryListener$1;->this$1:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$GetCampaignCategoryListener;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$GetCampaignCategoryListener;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;
    invoke-static {v3}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$GetCampaignCategoryListener;->access$0(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$GetCampaignCategoryListener;)Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    move-result-object v3

    iget-object v4, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$GetCampaignCategoryListener$1;->val$response_text:Ljava/lang/String;

    # invokes: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->ProcessJsonCampaignCategory(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$10(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;Ljava/lang/String;)V

    .line 1601
    const-string v3, "category_buzzebees_lib"

    iget-object v4, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$GetCampaignCategoryListener$1;->val$response_text:Ljava/lang/String;

    iget-object v5, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$GetCampaignCategoryListener$1;->this$1:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$GetCampaignCategoryListener;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$GetCampaignCategoryListener;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;
    invoke-static {v5}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$GetCampaignCategoryListener;->access$0(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$GetCampaignCategoryListener;)Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    move-result-object v5

    invoke-virtual {v5}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lic/buzzebeeslib/util/LocalFileHelper;->saveCatchToSD(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 1603
    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$GetCampaignCategoryListener$1;->this$1:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$GetCampaignCategoryListener;

    iget-boolean v3, v3, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$GetCampaignCategoryListener;->gIsFilterCat:Z

    if-eqz v3, :cond_64

    .line 1604
    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$GetCampaignCategoryListener$1;->this$1:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$GetCampaignCategoryListener;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$GetCampaignCategoryListener;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;
    invoke-static {v3}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$GetCampaignCategoryListener;->access$0(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$GetCampaignCategoryListener;)Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    move-result-object v3

    invoke-virtual {v3}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "cat"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1605
    .local v2, "param_cat":Ljava/lang/String;
    if-eqz v2, :cond_64

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_64

    .line 1606
    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$GetCampaignCategoryListener$1;->this$1:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$GetCampaignCategoryListener;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$GetCampaignCategoryListener;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;
    invoke-static {v3}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$GetCampaignCategoryListener;->access$0(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$GetCampaignCategoryListener;)Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->doFilterCat(Ljava/lang/String;Z)V

    .line 1610
    .end local v2    # "param_cat":Ljava/lang/String;
    :cond_64
    return-void

    .line 1592
    :cond_65
    const/4 v1, 0x1

    .line 1594
    goto :goto_1c

    .line 1595
    :cond_67
    const/4 v1, 0x1

    goto :goto_1c
.end method
