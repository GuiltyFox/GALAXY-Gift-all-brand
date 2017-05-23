.class Lcom/samsung/privilege/GCMIntentService$1;
.super Lcom/bzbs/lib/http/okhttp/ResponseListener;
.source "GCMIntentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/GCMIntentService;->onMessage(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/bean/MessageGCM;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:I

.field final synthetic d:Lcom/samsung/privilege/GCMIntentService;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/GCMIntentService;Lcom/bzbs/bean/MessageGCM;Landroid/content/Context;I)V
    .registers 5

    .prologue
    .line 138
    iput-object p1, p0, Lcom/samsung/privilege/GCMIntentService$1;->d:Lcom/samsung/privilege/GCMIntentService;

    iput-object p2, p0, Lcom/samsung/privilege/GCMIntentService$1;->a:Lcom/bzbs/bean/MessageGCM;

    iput-object p3, p0, Lcom/samsung/privilege/GCMIntentService$1;->b:Landroid/content/Context;

    iput p4, p0, Lcom/samsung/privilege/GCMIntentService$1;->c:I

    invoke-direct {p0}, Lcom/bzbs/lib/http/okhttp/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 158
    invoke-super {p0, p1, p2, p3, p4}, Lcom/bzbs/lib/http/okhttp/ResponseListener;->failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V

    .line 160
    invoke-static {}, Lcom/samsung/privilege/GCMIntentService;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(getCampaign|onFailure)response_code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method public successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 12

    .prologue
    .line 141
    invoke-static {}, Lcom/samsung/privilege/GCMIntentService;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(getCampaign|onComplete)response_code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :try_start_26
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 145
    new-instance v6, Lcom/bzbs/bean/Campaign;

    invoke-direct {v6, v0}, Lcom/bzbs/bean/Campaign;-><init>(Lorg/json/JSONObject;)V

    .line 147
    iget-object v0, p0, Lcom/samsung/privilege/GCMIntentService$1;->a:Lcom/bzbs/bean/MessageGCM;

    iget-object v1, v6, Lcom/bzbs/bean/Campaign;->AgencyID:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/bean/MessageGCM;->agency_id:Ljava/lang/String;

    .line 148
    iget-object v0, p0, Lcom/samsung/privilege/GCMIntentService$1;->a:Lcom/bzbs/bean/MessageGCM;

    iget-object v1, v6, Lcom/bzbs/bean/Campaign;->ParentCategoryID:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/bean/MessageGCM;->cp_cat_id:Ljava/lang/String;

    .line 150
    iget-object v0, p0, Lcom/samsung/privilege/GCMIntentService$1;->d:Lcom/samsung/privilege/GCMIntentService;

    iget-object v1, p0, Lcom/samsung/privilege/GCMIntentService$1;->b:Landroid/content/Context;

    iget v2, p0, Lcom/samsung/privilege/GCMIntentService$1;->c:I

    iget-object v3, p0, Lcom/samsung/privilege/GCMIntentService$1;->a:Lcom/bzbs/bean/MessageGCM;

    iget-object v4, p0, Lcom/samsung/privilege/GCMIntentService$1;->b:Landroid/content/Context;

    const v5, 0x7f09023e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v6, Lcom/bzbs/bean/Campaign;->ID:Ljava/lang/String;

    iget-object v6, v6, Lcom/bzbs/bean/Campaign;->AgencyID:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/samsung/privilege/GCMIntentService;->a(Lcom/samsung/privilege/GCMIntentService;Landroid/content/Context;ILcom/bzbs/bean/MessageGCM;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_54} :catch_55

    .line 154
    :goto_54
    return-void

    .line 151
    :catch_55
    move-exception v0

    goto :goto_54
.end method
