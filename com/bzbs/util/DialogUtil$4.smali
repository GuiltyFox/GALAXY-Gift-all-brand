.class final Lcom/bzbs/util/DialogUtil$4;
.super Ljava/lang/Object;
.source "DialogUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/util/DialogUtil;->a(Landroid/app/Activity;Landroid/os/Handler;Lcom/bzbs/bean/Campaign;Lcom/bzbs/bean/NFCTag;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lcom/bzbs/bean/Campaign;

.field final synthetic c:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Dialog;Lcom/bzbs/bean/Campaign;Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 234
    iput-object p1, p0, Lcom/bzbs/util/DialogUtil$4;->a:Landroid/app/Dialog;

    iput-object p2, p0, Lcom/bzbs/util/DialogUtil$4;->b:Lcom/bzbs/bean/Campaign;

    iput-object p3, p0, Lcom/bzbs/util/DialogUtil$4;->c:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    .prologue
    .line 236
    iget-object v0, p0, Lcom/bzbs/util/DialogUtil$4;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 237
    const/4 v0, 0x1

    sput-boolean v0, Lcom/bzbs/util/DialogUtil;->a:Z

    .line 239
    iget-object v0, p0, Lcom/bzbs/util/DialogUtil$4;->b:Lcom/bzbs/bean/Campaign;

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->CustomInput:Ljava/lang/String;

    .line 242
    :try_start_c
    const-string/jumbo v1, "{campaign_id}"

    iget-object v2, p0, Lcom/bzbs/util/DialogUtil$4;->b:Lcom/bzbs/bean/Campaign;

    iget-object v2, v2, Lcom/bzbs/bean/Campaign;->ID:Ljava/lang/String;

    invoke-static {v2}, Lcom/bzbs/util/BBUtil;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_21} :catch_39

    move-result-object v0

    .line 247
    :goto_22
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/bzbs/util/DialogUtil$4;->c:Landroid/app/Activity;

    const-class v3, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 248
    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    iget-object v0, p0, Lcom/bzbs/util/DialogUtil$4;->c:Landroid/app/Activity;

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 250
    return-void

    .line 243
    :catch_39
    move-exception v1

    .line 244
    invoke-static {}, Lcom/bzbs/util/DialogUtil;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception|replaceurl|1 := "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_22
.end method
