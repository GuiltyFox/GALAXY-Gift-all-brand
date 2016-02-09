.class Lic/buzzebeeslib/util/ResumeUtil$4;
.super Ljava/lang/Object;
.source "ResumeUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/util/ResumeUtil;->showDialogHasNewVersion(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/util/ResumeUtil$4;->val$activity:Landroid/app/Activity;

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 11
    .param p1, "p_dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 249
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 250
    const/4 v3, 0x0

    invoke-static {v3}, Lic/buzzebeeslib/util/ResumeUtil;->access$2(Z)V

    .line 252
    sget v3, Lic/buzzebeeslib/util/ThemesUtil;->gTheme:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4f

    .line 253
    sget-object v1, Lic/buzzebeeslib/LibConst;->UriPlayStoreBuzzebees:Ljava/lang/String;

    .line 255
    .local v1, "appNameBuzzebees":Ljava/lang/String;
    :try_start_e
    iget-object v3, p0, Lic/buzzebeeslib/util/ResumeUtil$4;->val$activity:Landroid/app/Activity;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "market://details?id="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_2d
    .catch Landroid/content/ActivityNotFoundException; {:try_start_e .. :try_end_2d} :catch_2e

    .line 267
    .end local v1    # "appNameBuzzebees":Ljava/lang/String;
    :cond_2d
    :goto_2d
    return-void

    .line 256
    .restart local v1    # "appNameBuzzebees":Ljava/lang/String;
    :catch_2e
    move-exception v0

    .line 257
    .local v0, "anfe":Landroid/content/ActivityNotFoundException;
    iget-object v3, p0, Lic/buzzebeeslib/util/ResumeUtil$4;->val$activity:Landroid/app/Activity;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "http://play.google.com/store/apps/details?id="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2d

    .line 259
    .end local v0    # "anfe":Landroid/content/ActivityNotFoundException;
    .end local v1    # "appNameBuzzebees":Ljava/lang/String;
    :cond_4f
    sget v3, Lic/buzzebeeslib/util/ThemesUtil;->gTheme:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2d

    .line 260
    sget-object v2, Lic/buzzebeeslib/LibConst;->UriPlayStoreSamsung:Ljava/lang/String;

    .line 262
    .local v2, "appNameSamsung":Ljava/lang/String;
    :try_start_56
    iget-object v3, p0, Lic/buzzebeeslib/util/ResumeUtil$4;->val$activity:Landroid/app/Activity;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "market://details?id="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_75
    .catch Landroid/content/ActivityNotFoundException; {:try_start_56 .. :try_end_75} :catch_76

    goto :goto_2d

    .line 263
    :catch_76
    move-exception v0

    .line 264
    .restart local v0    # "anfe":Landroid/content/ActivityNotFoundException;
    iget-object v3, p0, Lic/buzzebeeslib/util/ResumeUtil$4;->val$activity:Landroid/app/Activity;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "http://play.google.com/store/apps/details?id="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2d
.end method
