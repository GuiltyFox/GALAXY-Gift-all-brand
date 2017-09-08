.class final Lcom/bzbs/util/NfcUtils$1;
.super Ljava/lang/Object;
.source "NfcUtils.java"

# interfaces
.implements Lcom/facebook/FacebookCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/util/NfcUtils;->a(Lcom/facebook/share/widget/ShareDialog;Lcom/bzbs/bean/NFCTag;Lcom/bzbs/bean/NFCTag;Landroid/content/Context;Lcom/facebook/CallbackManager;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/FacebookCallback",
        "<",
        "Lcom/facebook/share/Sharer$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/bzbs/bean/NFCTag;

.field final synthetic c:Lcom/bzbs/bean/NFCTag;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/bzbs/bean/NFCTag;Lcom/bzbs/bean/NFCTag;)V
    .registers 4

    .prologue
    .line 270
    iput-object p1, p0, Lcom/bzbs/util/NfcUtils$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/bzbs/util/NfcUtils$1;->b:Lcom/bzbs/bean/NFCTag;

    iput-object p3, p0, Lcom/bzbs/util/NfcUtils$1;->c:Lcom/bzbs/bean/NFCTag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/share/Sharer$Result;)V
    .registers 5

    .prologue
    .line 273
    if-eqz p1, :cond_3a

    .line 274
    invoke-virtual {p1}, Lcom/facebook/share/Sharer$Result;->getPostId()Ljava/lang/String;

    move-result-object v0

    .line 275
    if-eqz v0, :cond_3a

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3a

    .line 276
    iget-object v1, p0, Lcom/bzbs/util/NfcUtils$1;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/bzbs/util/BBPointCall;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/bzbs/util/NfcUtils$1;->b:Lcom/bzbs/bean/NFCTag;

    if-eqz v0, :cond_3a

    .line 279
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/bzbs/util/NfcUtils$1;->a:Landroid/content/Context;

    const-class v2, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 280
    const-string/jumbo v1, "campaign_id"

    iget-object v2, p0, Lcom/bzbs/util/NfcUtils$1;->b:Lcom/bzbs/bean/NFCTag;

    iget v2, v2, Lcom/bzbs/bean/NFCTag;->ReDeem_CampaignID:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 281
    const-string/jumbo v1, "nfc_tag"

    iget-object v2, p0, Lcom/bzbs/util/NfcUtils$1;->b:Lcom/bzbs/bean/NFCTag;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 282
    iget-object v1, p0, Lcom/bzbs/util/NfcUtils$1;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 286
    :cond_3a
    return-void
.end method

.method public onCancel()V
    .registers 6

    .prologue
    .line 290
    iget-object v0, p0, Lcom/bzbs/util/NfcUtils$1;->b:Lcom/bzbs/bean/NFCTag;

    if-eqz v0, :cond_1c

    .line 291
    iget-object v0, p0, Lcom/bzbs/util/NfcUtils$1;->c:Lcom/bzbs/bean/NFCTag;

    iget-boolean v0, v0, Lcom/bzbs/bean/NFCTag;->Share_RequireForReDeem:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3e

    .line 292
    const-string/jumbo v0, ""

    .line 294
    :try_start_e
    iget-object v1, p0, Lcom/bzbs/util/NfcUtils$1;->a:Landroid/content/Context;

    const v2, 0x7f0900ce

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_16} :catch_1d

    move-result-object v0

    .line 298
    :goto_17
    iget-object v1, p0, Lcom/bzbs/util/NfcUtils$1;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/bzbs/util/DialogUtil;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 306
    :cond_1c
    :goto_1c
    return-void

    .line 295
    :catch_1d
    move-exception v1

    .line 296
    invoke-static {}, Lcom/bzbs/util/NfcUtils;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception := "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    .line 300
    :cond_3e
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/bzbs/util/NfcUtils$1;->a:Landroid/content/Context;

    const-class v2, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 301
    const-string/jumbo v1, "campaign_id"

    iget-object v2, p0, Lcom/bzbs/util/NfcUtils$1;->b:Lcom/bzbs/bean/NFCTag;

    iget v2, v2, Lcom/bzbs/bean/NFCTag;->ReDeem_CampaignID:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 302
    const-string/jumbo v1, "nfc_tag"

    iget-object v2, p0, Lcom/bzbs/util/NfcUtils$1;->b:Lcom/bzbs/bean/NFCTag;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 303
    iget-object v1, p0, Lcom/bzbs/util/NfcUtils$1;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1c
.end method

.method public onError(Lcom/facebook/FacebookException;)V
    .registers 2

    .prologue
    .line 310
    invoke-virtual {p0}, Lcom/bzbs/util/NfcUtils$1;->onCancel()V

    .line 311
    return-void
.end method

.method public synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 270
    check-cast p1, Lcom/facebook/share/Sharer$Result;

    invoke-virtual {p0, p1}, Lcom/bzbs/util/NfcUtils$1;->a(Lcom/facebook/share/Sharer$Result;)V

    return-void
.end method
