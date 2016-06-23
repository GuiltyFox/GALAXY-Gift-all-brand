.class Lcom/samsung/privilege/GCMIntentService$1;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "GCMIntentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/GCMIntentService;->onMessage(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/GCMIntentService;

.field final synthetic val$ctxt:Landroid/content/Context;

.field final synthetic val$intRequestCode:I

.field final synthetic val$newMessageGCM:Lcom/bzbs/bean/MessageGCM;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/GCMIntentService;Lcom/bzbs/bean/MessageGCM;Landroid/content/Context;I)V
    .registers 5
    .param p1, "this$0"    # Lcom/samsung/privilege/GCMIntentService;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/samsung/privilege/GCMIntentService$1;->this$0:Lcom/samsung/privilege/GCMIntentService;

    iput-object p2, p0, Lcom/samsung/privilege/GCMIntentService$1;->val$newMessageGCM:Lcom/bzbs/bean/MessageGCM;

    iput-object p3, p0, Lcom/samsung/privilege/GCMIntentService$1;->val$ctxt:Landroid/content/Context;

    iput p4, p0, Lcom/samsung/privilege/GCMIntentService$1;->val$intRequestCode:I

    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V
    .registers 10
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lcz/msebera/android/httpclient/Header;
    .param p3, "responseBody"    # [B
    .param p4, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 155
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p3}, Ljava/lang/String;-><init>([B)V

    .line 156
    .local v1, "response_text":Ljava/lang/String;
    # getter for: Lcom/samsung/privilege/GCMIntentService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/privilege/GCMIntentService;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "(getCampaign|onFailure)response_code="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",response="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bzbs/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2b} :catch_2c

    .line 160
    .end local v1    # "response_text":Ljava/lang/String;
    :goto_2b
    return-void

    .line 157
    :catch_2c
    move-exception v0

    .line 158
    .local v0, "ex":Ljava/lang/Exception;
    # getter for: Lcom/samsung/privilege/GCMIntentService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/privilege/GCMIntentService;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "(getCampaign|onFailure)response_code="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bzbs/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2b
.end method

.method public onSuccess(I[Lcz/msebera/android/httpclient/Header;[B)V
    .registers 14
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lcz/msebera/android/httpclient/Header;
    .param p3, "responseBody"    # [B

    .prologue
    .line 136
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, p3}, Ljava/lang/String;-><init>([B)V

    .line 137
    .local v9, "response_text":Ljava/lang/String;
    # getter for: Lcom/samsung/privilege/GCMIntentService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/privilege/GCMIntentService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(getCampaign|onComplete)response_code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :try_start_2b
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 141
    .local v8, "jsonRoot":Lorg/json/JSONObject;
    new-instance v7, Lcom/bzbs/bean/Campaign;

    invoke-direct {v7, v8}, Lcom/bzbs/bean/Campaign;-><init>(Lorg/json/JSONObject;)V

    .line 143
    .local v7, "campaign":Lcom/bzbs/bean/Campaign;
    iget-object v0, p0, Lcom/samsung/privilege/GCMIntentService$1;->val$newMessageGCM:Lcom/bzbs/bean/MessageGCM;

    iget-object v1, v7, Lcom/bzbs/bean/Campaign;->AgencyID:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/bean/MessageGCM;->agency_id:Ljava/lang/String;

    .line 144
    iget-object v0, p0, Lcom/samsung/privilege/GCMIntentService$1;->val$newMessageGCM:Lcom/bzbs/bean/MessageGCM;

    iget-object v1, v7, Lcom/bzbs/bean/Campaign;->ParentCategoryID:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/bean/MessageGCM;->cp_cat_id:Ljava/lang/String;

    .line 146
    iget-object v0, p0, Lcom/samsung/privilege/GCMIntentService$1;->this$0:Lcom/samsung/privilege/GCMIntentService;

    iget-object v1, p0, Lcom/samsung/privilege/GCMIntentService$1;->val$ctxt:Landroid/content/Context;

    iget v2, p0, Lcom/samsung/privilege/GCMIntentService$1;->val$intRequestCode:I

    iget-object v3, p0, Lcom/samsung/privilege/GCMIntentService$1;->val$newMessageGCM:Lcom/bzbs/bean/MessageGCM;

    iget-object v4, p0, Lcom/samsung/privilege/GCMIntentService$1;->val$ctxt:Landroid/content/Context;

    const v5, 0x7f090384

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v7, Lcom/bzbs/bean/Campaign;->ID:Ljava/lang/String;

    iget-object v6, v7, Lcom/bzbs/bean/Campaign;->AgencyID:Ljava/lang/String;

    # invokes: Lcom/samsung/privilege/GCMIntentService;->processNotiCampaign(Landroid/content/Context;ILcom/bzbs/bean/MessageGCM;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v0 .. v6}, Lcom/samsung/privilege/GCMIntentService;->access$100(Lcom/samsung/privilege/GCMIntentService;Landroid/content/Context;ILcom/bzbs/bean/MessageGCM;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_59} :catch_5a

    .line 150
    .end local v7    # "campaign":Lcom/bzbs/bean/Campaign;
    .end local v8    # "jsonRoot":Lorg/json/JSONObject;
    :goto_59
    return-void

    .line 147
    :catch_5a
    move-exception v0

    goto :goto_59
.end method
