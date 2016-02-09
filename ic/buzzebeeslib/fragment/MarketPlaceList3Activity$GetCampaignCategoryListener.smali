.class Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$GetCampaignCategoryListener;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "MarketPlaceList3Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetCampaignCategoryListener"
.end annotation


# instance fields
.field gIsFilterCat:Z

.field final synthetic this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;


# direct methods
.method public constructor <init>(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;Z)V
    .registers 4
    .param p2, "is_filter_cat"    # Z

    .prologue
    .line 1549
    iput-object p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$GetCampaignCategoryListener;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    .line 1547
    const/4 v0, 0x0

    iput-boolean v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$GetCampaignCategoryListener;->gIsFilterCat:Z

    .line 1550
    iput-boolean p2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$GetCampaignCategoryListener;->gIsFilterCat:Z

    .line 1551
    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$GetCampaignCategoryListener;)Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;
    .registers 2

    .prologue
    .line 1545
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$GetCampaignCategoryListener;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    return-object v0
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 4
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 1592
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1593
    const/16 v0, -0x1f4

    invoke-virtual {p0, v0, p2}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$GetCampaignCategoryListener;->onSuccess(ILjava/lang/String;)V

    .line 1594
    return-void
.end method

.method public onSuccess(ILjava/lang/String;)V
    .registers 6
    .param p1, "response_code"    # I
    .param p2, "response_text"    # Ljava/lang/String;

    .prologue
    .line 1555
    const-string v0, "buzzebees.marketlist.fragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(GetCampaignCategoryListener|onComplete)response={"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1557
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_2c

    .line 1558
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$GetCampaignCategoryListener;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    new-instance v1, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$GetCampaignCategoryListener$1;

    invoke-direct {v1, p0, p2}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$GetCampaignCategoryListener$1;-><init>(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$GetCampaignCategoryListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1588
    :cond_2c
    return-void
.end method
