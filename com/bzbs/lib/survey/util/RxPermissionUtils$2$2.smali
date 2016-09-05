.class Lcom/bzbs/lib/survey/util/RxPermissionUtils$2$2;
.super Ljava/lang/Object;
.source "RxPermissionUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/util/RxPermissionUtils$2;->a(Ljava/lang/Boolean;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Boolean;

.field final synthetic b:Lcom/bzbs/lib/survey/util/RxPermissionUtils$2;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/util/RxPermissionUtils$2;Ljava/lang/Boolean;)V
    .registers 3

    .prologue
    .line 90
    iput-object p1, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils$2$2;->b:Lcom/bzbs/lib/survey/util/RxPermissionUtils$2;

    iput-object p2, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils$2$2;->a:Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    .prologue
    .line 93
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils$2$2;->b:Lcom/bzbs/lib/survey/util/RxPermissionUtils$2;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/RxPermissionUtils$2;->a:Lcom/bzbs/lib/survey/util/RxPermissionUtils;

    invoke-static {v0}, Lcom/bzbs/lib/survey/util/RxPermissionUtils;->d(Lcom/bzbs/lib/survey/util/RxPermissionUtils;)Lcom/bzbs/lib/survey/util/AddOnPermissions;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 94
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils$2$2;->b:Lcom/bzbs/lib/survey/util/RxPermissionUtils$2;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/RxPermissionUtils$2;->a:Lcom/bzbs/lib/survey/util/RxPermissionUtils;

    invoke-static {v0}, Lcom/bzbs/lib/survey/util/RxPermissionUtils;->d(Lcom/bzbs/lib/survey/util/RxPermissionUtils;)Lcom/bzbs/lib/survey/util/AddOnPermissions;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils$2$2;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/survey/util/AddOnPermissions;->a(Z)V

    .line 96
    :cond_1b
    :try_start_1b
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils$2$2;->b:Lcom/bzbs/lib/survey/util/RxPermissionUtils$2;

    iget-object v2, v2, Lcom/bzbs/lib/survey/util/RxPermissionUtils$2;->a:Lcom/bzbs/lib/survey/util/RxPermissionUtils;

    .line 97
    invoke-static {v2}, Lcom/bzbs/lib/survey/util/RxPermissionUtils;->c(Lcom/bzbs/lib/survey/util/RxPermissionUtils;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 98
    iget-object v1, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils$2$2;->b:Lcom/bzbs/lib/survey/util/RxPermissionUtils$2;

    iget-object v1, v1, Lcom/bzbs/lib/survey/util/RxPermissionUtils$2;->a:Lcom/bzbs/lib/survey/util/RxPermissionUtils;

    invoke-static {v1}, Lcom/bzbs/lib/survey/util/RxPermissionUtils;->c(Lcom/bzbs/lib/survey/util/RxPermissionUtils;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_56
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1b .. :try_end_56} :catch_57

    .line 103
    :goto_56
    return-void

    .line 99
    :catch_57
    move-exception v0

    .line 100
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_56
.end method
