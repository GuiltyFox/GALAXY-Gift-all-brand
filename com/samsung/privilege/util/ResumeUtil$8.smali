.class final Lcom/samsung/privilege/util/ResumeUtil$8;
.super Ljava/lang/Object;
.source "ResumeUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/ResumeUtil;->c(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 480
    iput-object p1, p0, Lcom/samsung/privilege/util/ResumeUtil$8;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 482
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 483
    iget-object v0, p0, Lcom/samsung/privilege/util/ResumeUtil$8;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/bzbs/data/UserLogin;->p(Landroid/content/Context;Z)Z

    .line 485
    iget-object v0, p0, Lcom/samsung/privilege/util/ResumeUtil$8;->a:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/bzbs/data/UserLogin;->r(Landroid/content/Context;Z)V

    .line 487
    sget-object v0, Lcom/bzbs/data/AppSetting;->k:Ljava/lang/String;

    .line 489
    :try_start_14
    iget-object v1, p0, Lcom/samsung/privilege/util/ResumeUtil$8;->a:Landroid/app/Activity;

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.VIEW"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "market://details?id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_39
    .catch Landroid/content/ActivityNotFoundException; {:try_start_14 .. :try_end_39} :catch_3a

    .line 493
    :goto_39
    return-void

    .line 490
    :catch_3a
    move-exception v1

    .line 491
    iget-object v1, p0, Lcom/samsung/privilege/util/ResumeUtil$8;->a:Landroid/app/Activity;

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.VIEW"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "http://play.google.com/store/apps/details?id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_39
.end method
