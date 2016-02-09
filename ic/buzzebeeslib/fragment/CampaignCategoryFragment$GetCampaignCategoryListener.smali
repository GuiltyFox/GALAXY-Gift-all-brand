.class Lic/buzzebeeslib/fragment/CampaignCategoryFragment$GetCampaignCategoryListener;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "CampaignCategoryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/fragment/CampaignCategoryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetCampaignCategoryListener"
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/fragment/CampaignCategoryFragment;


# direct methods
.method private constructor <init>(Lic/buzzebeeslib/fragment/CampaignCategoryFragment;)V
    .registers 2

    .prologue
    .line 195
    iput-object p1, p0, Lic/buzzebeeslib/fragment/CampaignCategoryFragment$GetCampaignCategoryListener;->this$0:Lic/buzzebeeslib/fragment/CampaignCategoryFragment;

    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lic/buzzebeeslib/fragment/CampaignCategoryFragment;Lic/buzzebeeslib/fragment/CampaignCategoryFragment$GetCampaignCategoryListener;)V
    .registers 3

    .prologue
    .line 195
    invoke-direct {p0, p1}, Lic/buzzebeeslib/fragment/CampaignCategoryFragment$GetCampaignCategoryListener;-><init>(Lic/buzzebeeslib/fragment/CampaignCategoryFragment;)V

    return-void
.end method

.method static synthetic access$1(Lic/buzzebeeslib/fragment/CampaignCategoryFragment$GetCampaignCategoryListener;)Lic/buzzebeeslib/fragment/CampaignCategoryFragment;
    .registers 2

    .prologue
    .line 195
    iget-object v0, p0, Lic/buzzebeeslib/fragment/CampaignCategoryFragment$GetCampaignCategoryListener;->this$0:Lic/buzzebeeslib/fragment/CampaignCategoryFragment;

    return-object v0
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 4
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 217
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 218
    const/16 v0, -0x1f4

    invoke-virtual {p0, v0, p2}, Lic/buzzebeeslib/fragment/CampaignCategoryFragment$GetCampaignCategoryListener;->onSuccess(ILjava/lang/String;)V

    .line 219
    return-void
.end method

.method public onSuccess(ILjava/lang/String;)V
    .registers 6
    .param p1, "response_code"    # I
    .param p2, "response_text"    # Ljava/lang/String;

    .prologue
    .line 198
    iget-object v0, p0, Lic/buzzebeeslib/fragment/CampaignCategoryFragment$GetCampaignCategoryListener;->this$0:Lic/buzzebeeslib/fragment/CampaignCategoryFragment;

    # getter for: Lic/buzzebeeslib/fragment/CampaignCategoryFragment;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/CampaignCategoryFragment;->access$0(Lic/buzzebeeslib/fragment/CampaignCategoryFragment;)Ljava/lang/String;

    move-result-object v0

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

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v0, p0, Lic/buzzebeeslib/fragment/CampaignCategoryFragment$GetCampaignCategoryListener;->this$0:Lic/buzzebeeslib/fragment/CampaignCategoryFragment;

    invoke-virtual {v0}, Lic/buzzebeeslib/fragment/CampaignCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_2b

    .line 213
    :cond_2a
    :goto_2a
    return-void

    .line 204
    :cond_2b
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_2a

    .line 205
    iget-object v0, p0, Lic/buzzebeeslib/fragment/CampaignCategoryFragment$GetCampaignCategoryListener;->this$0:Lic/buzzebeeslib/fragment/CampaignCategoryFragment;

    invoke-virtual {v0}, Lic/buzzebeeslib/fragment/CampaignCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lic/buzzebeeslib/fragment/CampaignCategoryFragment$GetCampaignCategoryListener$1;

    invoke-direct {v1, p0, p2}, Lic/buzzebeeslib/fragment/CampaignCategoryFragment$GetCampaignCategoryListener$1;-><init>(Lic/buzzebeeslib/fragment/CampaignCategoryFragment$GetCampaignCategoryListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2a
.end method
