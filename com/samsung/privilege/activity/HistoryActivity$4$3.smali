.class Lcom/samsung/privilege/activity/HistoryActivity$4$3;
.super Ljava/lang/Object;
.source "HistoryActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/HistoryActivity$4;->a(Landroid/view/View;I)V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/bean/Purchasing;

.field final synthetic b:Lcom/samsung/privilege/activity/HistoryActivity$4;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/HistoryActivity$4;Lcom/bzbs/bean/Purchasing;)V
    .registers 3

    .prologue
    .line 257
    iput-object p1, p0, Lcom/samsung/privilege/activity/HistoryActivity$4$3;->b:Lcom/samsung/privilege/activity/HistoryActivity$4;

    iput-object p2, p0, Lcom/samsung/privilege/activity/HistoryActivity$4$3;->a:Lcom/bzbs/bean/Purchasing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7

    .prologue
    .line 259
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 262
    :try_start_3
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryActivity$4$3;->a:Lcom/bzbs/bean/Purchasing;

    iget-object v0, v0, Lcom/bzbs/bean/Purchasing;->InstallAppUrl:Ljava/lang/String;

    .line 263
    const-string/jumbo v1, "{token}"

    iget-object v2, p0, Lcom/samsung/privilege/activity/HistoryActivity$4$3;->b:Lcom/samsung/privilege/activity/HistoryActivity$4;

    iget-object v2, v2, Lcom/samsung/privilege/activity/HistoryActivity$4;->a:Lcom/samsung/privilege/activity/HistoryActivity;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/HistoryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 264
    iget-object v1, p0, Lcom/samsung/privilege/activity/HistoryActivity$4$3;->b:Lcom/samsung/privilege/activity/HistoryActivity$4;

    iget-object v1, v1, Lcom/samsung/privilege/activity/HistoryActivity$4;->a:Lcom/samsung/privilege/activity/HistoryActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/HistoryActivity;->i(Lcom/samsung/privilege/activity/HistoryActivity;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "(url install)="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object v1, p0, Lcom/samsung/privilege/activity/HistoryActivity$4$3;->b:Lcom/samsung/privilege/activity/HistoryActivity$4;

    iget-object v1, v1, Lcom/samsung/privilege/activity/HistoryActivity$4;->a:Lcom/samsung/privilege/activity/HistoryActivity;

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Lcom/samsung/privilege/activity/HistoryActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_4c} :catch_4d

    .line 269
    :goto_4c
    return-void

    .line 266
    :catch_4d
    move-exception v0

    .line 267
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryActivity$4$3;->b:Lcom/samsung/privilege/activity/HistoryActivity$4;

    iget-object v0, v0, Lcom/samsung/privilege/activity/HistoryActivity$4;->a:Lcom/samsung/privilege/activity/HistoryActivity;

    const-string/jumbo v1, "Error while install application!"

    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/HistoryActivity;->b(Lcom/samsung/privilege/activity/HistoryActivity;Ljava/lang/String;)V

    goto :goto_4c
.end method
