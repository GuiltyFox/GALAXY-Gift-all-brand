.class Lic/buzzebeeslib/util/ResumeUtil$2;
.super Ljava/lang/Object;
.source "ResumeUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/util/ResumeUtil;->showDialogAllowUse(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
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
    iput-object p1, p0, Lic/buzzebeeslib/util/ResumeUtil$2;->val$activity:Landroid/app/Activity;

    .line 209
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
    iget-object v3, p0, Lic/buzzebeeslib/util/ResumeUtil$2;->val$activity:Landroid/app/Activity;

    invoke-static {v3}, Lic/buzzebeeslib/LibUserLogin;->Logout(Landroid/app/Activity;)V

    .line 214
    sget v3, Lic/buzzebeeslib/util/ThemesUtil;->gTheme:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_50

    .line 215
    sget-object v1, Lic/buzzebeeslib/LibConst;->UriPlayStoreBuzzebees:Ljava/lang/String;

    .line 217
    .local v1, "appNameBuzzebees":Ljava/lang/String;
    :try_start_f
    iget-object v3, p0, Lic/buzzebeeslib/util/ResumeUtil$2;->val$activity:Landroid/app/Activity;

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
    :try_end_2e
    .catch Landroid/content/ActivityNotFoundException; {:try_start_f .. :try_end_2e} :catch_2f

    .line 229
    .end local v1    # "appNameBuzzebees":Ljava/lang/String;
    :cond_2e
    :goto_2e
    return-void

    .line 218
    .restart local v1    # "appNameBuzzebees":Ljava/lang/String;
    :catch_2f
    move-exception v0

    .line 219
    .local v0, "anfe":Landroid/content/ActivityNotFoundException;
    iget-object v3, p0, Lic/buzzebeeslib/util/ResumeUtil$2;->val$activity:Landroid/app/Activity;

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

    goto :goto_2e

    .line 221
    .end local v0    # "anfe":Landroid/content/ActivityNotFoundException;
    .end local v1    # "appNameBuzzebees":Ljava/lang/String;
    :cond_50
    sget v3, Lic/buzzebeeslib/util/ThemesUtil;->gTheme:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2e

    .line 222
    sget-object v2, Lic/buzzebeeslib/LibConst;->UriPlayStoreSamsung:Ljava/lang/String;

    .line 224
    .local v2, "appNameSamsung":Ljava/lang/String;
    :try_start_57
    iget-object v3, p0, Lic/buzzebeeslib/util/ResumeUtil$2;->val$activity:Landroid/app/Activity;

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
    :try_end_76
    .catch Landroid/content/ActivityNotFoundException; {:try_start_57 .. :try_end_76} :catch_77

    goto :goto_2e

    .line 225
    :catch_77
    move-exception v0

    .line 226
    .restart local v0    # "anfe":Landroid/content/ActivityNotFoundException;
    iget-object v3, p0, Lic/buzzebeeslib/util/ResumeUtil$2;->val$activity:Landroid/app/Activity;

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

    goto :goto_2e
.end method
