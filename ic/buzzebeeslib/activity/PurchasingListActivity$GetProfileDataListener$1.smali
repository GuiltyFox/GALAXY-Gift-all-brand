.class Lic/buzzebeeslib/activity/PurchasingListActivity$GetProfileDataListener$1;
.super Ljava/lang/Object;
.source "PurchasingListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/PurchasingListActivity$GetProfileDataListener;->onComplete(ILjava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$GetProfileDataListener;

.field private final synthetic val$response_code:I

.field private final synthetic val$response_text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/PurchasingListActivity$GetProfileDataListener;ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$GetProfileDataListener$1;->this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$GetProfileDataListener;

    iput p2, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$GetProfileDataListener$1;->val$response_code:I

    iput-object p3, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$GetProfileDataListener$1;->val$response_text:Ljava/lang/String;

    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 338
    iget v3, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$GetProfileDataListener$1;->val$response_code:I

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_35

    .line 340
    :try_start_6
    new-instance v1, Lorg/json/JSONObject;

    iget-object v3, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$GetProfileDataListener$1;->val$response_text:Ljava/lang/String;

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 341
    .local v1, "jsonRoot":Lorg/json/JSONObject;
    const-string v3, "Address"

    invoke-static {v1, v3}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 342
    .local v2, "strAddress":Ljava/lang/String;
    if-eqz v2, :cond_27

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    .line 343
    iget-object v3, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$GetProfileDataListener$1;->this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$GetProfileDataListener;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity$GetProfileDataListener;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;
    invoke-static {v3}, Lic/buzzebeeslib/activity/PurchasingListActivity$GetProfileDataListener;->access$0(Lic/buzzebeeslib/activity/PurchasingListActivity$GetProfileDataListener;)Lic/buzzebeeslib/activity/PurchasingListActivity;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$2(Lic/buzzebeeslib/activity/PurchasingListActivity;Z)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_27} :catch_28

    .line 351
    .end local v1    # "jsonRoot":Lorg/json/JSONObject;
    .end local v2    # "strAddress":Ljava/lang/String;
    :cond_27
    :goto_27
    return-void

    .line 345
    :catch_28
    move-exception v0

    .line 346
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$GetProfileDataListener$1;->this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$GetProfileDataListener;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity$GetProfileDataListener;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;
    invoke-static {v3}, Lic/buzzebeeslib/activity/PurchasingListActivity$GetProfileDataListener;->access$0(Lic/buzzebeeslib/activity/PurchasingListActivity$GetProfileDataListener;)Lic/buzzebeeslib/activity/PurchasingListActivity;

    move-result-object v3

    const-string v4, "Error while load profile data."

    # invokes: Lic/buzzebeeslib/activity/PurchasingListActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$3(Lic/buzzebeeslib/activity/PurchasingListActivity;Ljava/lang/String;)V

    goto :goto_27

    .line 349
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_35
    iget-object v3, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$GetProfileDataListener$1;->this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$GetProfileDataListener;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity$GetProfileDataListener;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;
    invoke-static {v3}, Lic/buzzebeeslib/activity/PurchasingListActivity$GetProfileDataListener;->access$0(Lic/buzzebeeslib/activity/PurchasingListActivity$GetProfileDataListener;)Lic/buzzebeeslib/activity/PurchasingListActivity;

    move-result-object v3

    const-string v4, "Can not load check address profile data."

    # invokes: Lic/buzzebeeslib/activity/PurchasingListActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$3(Lic/buzzebeeslib/activity/PurchasingListActivity;Ljava/lang/String;)V

    goto :goto_27
.end method
