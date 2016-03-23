.class final Lcom/bzbs/lib/survey/util/ResumeUtil$3;
.super Ljava/lang/Object;
.source "ResumeUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/util/ResumeUtil;->showDialogAllowUse(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 209
    iput-object p1, p0, Lcom/bzbs/lib/survey/util/ResumeUtil$3;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 11
    .param p1, "p_dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 211
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 212
    iget-object v3, p0, Lcom/bzbs/lib/survey/util/ResumeUtil$3;->val$activity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/bzbs/lib/survey/LibUserLogin;->Logout(Landroid/app/Activity;)V

    .line 214
    sget v3, Lcom/bzbs/lib/survey/util/ThemesUtil;->gTheme:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5c

    .line 215
    sget-object v1, Lcom/bzbs/lib/survey/LibConst;->UriPlayStoreBuzzebees:Ljava/lang/String;

    .line 217
    .local v1, "appNameBuzzebees":Ljava/lang/String;
    :try_start_f
    iget-object v3, p0, Lcom/bzbs/lib/survey/util/ResumeUtil$3;->val$activity:Landroid/app/Activity;

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.VIEW"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "market://details?id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_34
    .catch Landroid/content/ActivityNotFoundException; {:try_start_f .. :try_end_34} :catch_35

    .line 229
    .end local v1    # "appNameBuzzebees":Ljava/lang/String;
    :cond_34
    :goto_34
    return-void

    .line 218
    .restart local v1    # "appNameBuzzebees":Ljava/lang/String;
    :catch_35
    move-exception v0

    .line 219
    .local v0, "anfe":Landroid/content/ActivityNotFoundException;
    iget-object v3, p0, Lcom/bzbs/lib/survey/util/ResumeUtil$3;->val$activity:Landroid/app/Activity;

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.VIEW"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "http://play.google.com/store/apps/details?id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_34

    .line 221
    .end local v0    # "anfe":Landroid/content/ActivityNotFoundException;
    .end local v1    # "appNameBuzzebees":Ljava/lang/String;
    :cond_5c
    sget v3, Lcom/bzbs/lib/survey/util/ThemesUtil;->gTheme:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_34

    .line 222
    sget-object v2, Lcom/bzbs/lib/survey/LibConst;->UriPlayStoreSamsung:Ljava/lang/String;

    .line 224
    .local v2, "appNameSamsung":Ljava/lang/String;
    :try_start_63
    iget-object v3, p0, Lcom/bzbs/lib/survey/util/ResumeUtil$3;->val$activity:Landroid/app/Activity;

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.VIEW"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "market://details?id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_88
    .catch Landroid/content/ActivityNotFoundException; {:try_start_63 .. :try_end_88} :catch_89

    goto :goto_34

    .line 225
    :catch_89
    move-exception v0

    .line 226
    .restart local v0    # "anfe":Landroid/content/ActivityNotFoundException;
    iget-object v3, p0, Lcom/bzbs/lib/survey/util/ResumeUtil$3;->val$activity:Landroid/app/Activity;

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.VIEW"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "http://play.google.com/store/apps/details?id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_34
.end method
