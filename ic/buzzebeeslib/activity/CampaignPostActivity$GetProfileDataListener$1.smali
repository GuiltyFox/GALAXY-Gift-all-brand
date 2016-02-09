.class Lic/buzzebeeslib/activity/CampaignPostActivity$GetProfileDataListener$1;
.super Ljava/lang/Object;
.source "CampaignPostActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/CampaignPostActivity$GetProfileDataListener;->onComplete(ILjava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/activity/CampaignPostActivity$GetProfileDataListener;

.field private final synthetic val$response_code:I

.field private final synthetic val$response_text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/CampaignPostActivity$GetProfileDataListener;ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/CampaignPostActivity$GetProfileDataListener$1;->this$1:Lic/buzzebeeslib/activity/CampaignPostActivity$GetProfileDataListener;

    iput p2, p0, Lic/buzzebeeslib/activity/CampaignPostActivity$GetProfileDataListener$1;->val$response_code:I

    iput-object p3, p0, Lic/buzzebeeslib/activity/CampaignPostActivity$GetProfileDataListener$1;->val$response_text:Ljava/lang/String;

    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 360
    iget v1, p0, Lic/buzzebeeslib/activity/CampaignPostActivity$GetProfileDataListener$1;->val$response_code:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_20

    .line 362
    :try_start_6
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lic/buzzebeeslib/activity/CampaignPostActivity$GetProfileDataListener$1;->val$response_text:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 363
    .local v0, "jsonRoot":Lorg/json/JSONObject;
    iget-object v1, p0, Lic/buzzebeeslib/activity/CampaignPostActivity$GetProfileDataListener$1;->this$1:Lic/buzzebeeslib/activity/CampaignPostActivity$GetProfileDataListener;

    # getter for: Lic/buzzebeeslib/activity/CampaignPostActivity$GetProfileDataListener;->this$0:Lic/buzzebeeslib/activity/CampaignPostActivity;
    invoke-static {v1}, Lic/buzzebeeslib/activity/CampaignPostActivity$GetProfileDataListener;->access$0(Lic/buzzebeeslib/activity/CampaignPostActivity$GetProfileDataListener;)Lic/buzzebeeslib/activity/CampaignPostActivity;

    move-result-object v1

    # getter for: Lic/buzzebeeslib/activity/CampaignPostActivity;->gTvProfileName:Landroid/widget/TextView;
    invoke-static {v1}, Lic/buzzebeeslib/activity/CampaignPostActivity;->access$2(Lic/buzzebeeslib/activity/CampaignPostActivity;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "FirstName"

    invoke-static {v0, v2}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_20} :catch_21

    .line 371
    .end local v0    # "jsonRoot":Lorg/json/JSONObject;
    :cond_20
    :goto_20
    return-void

    .line 364
    :catch_21
    move-exception v1

    goto :goto_20
.end method
