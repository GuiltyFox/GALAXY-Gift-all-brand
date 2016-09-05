.class Lcom/samsung/privilege/util/RxPermissionUtils$3;
.super Ljava/lang/Object;
.source "RxPermissionUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/RxPermissionUtils;->a(Ljava/lang/Boolean;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Boolean;

.field final synthetic b:Lcom/samsung/privilege/util/RxPermissionUtils;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/util/RxPermissionUtils;Ljava/lang/Boolean;)V
    .registers 3

    .prologue
    .line 91
    iput-object p1, p0, Lcom/samsung/privilege/util/RxPermissionUtils$3;->b:Lcom/samsung/privilege/util/RxPermissionUtils;

    iput-object p2, p0, Lcom/samsung/privilege/util/RxPermissionUtils$3;->a:Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    .prologue
    .line 94
    iget-object v0, p0, Lcom/samsung/privilege/util/RxPermissionUtils$3;->b:Lcom/samsung/privilege/util/RxPermissionUtils;

    invoke-static {v0}, Lcom/samsung/privilege/util/RxPermissionUtils;->b(Lcom/samsung/privilege/util/RxPermissionUtils;)Lcom/samsung/privilege/util/AddOnPermissions;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 95
    iget-object v0, p0, Lcom/samsung/privilege/util/RxPermissionUtils$3;->b:Lcom/samsung/privilege/util/RxPermissionUtils;

    invoke-static {v0}, Lcom/samsung/privilege/util/RxPermissionUtils;->b(Lcom/samsung/privilege/util/RxPermissionUtils;)Lcom/samsung/privilege/util/AddOnPermissions;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/util/RxPermissionUtils$3;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/util/AddOnPermissions;->a(Z)V

    .line 97
    :cond_17
    :try_start_17
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/util/RxPermissionUtils$3;->b:Lcom/samsung/privilege/util/RxPermissionUtils;

    .line 98
    invoke-static {v2}, Lcom/samsung/privilege/util/RxPermissionUtils;->c(Lcom/samsung/privilege/util/RxPermissionUtils;)Landroid/content/Context;

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

    .line 99
    iget-object v1, p0, Lcom/samsung/privilege/util/RxPermissionUtils$3;->b:Lcom/samsung/privilege/util/RxPermissionUtils;

    invoke-static {v1}, Lcom/samsung/privilege/util/RxPermissionUtils;->c(Lcom/samsung/privilege/util/RxPermissionUtils;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_4e
    .catch Landroid/content/ActivityNotFoundException; {:try_start_17 .. :try_end_4e} :catch_4f

    .line 104
    :goto_4e
    return-void

    .line 100
    :catch_4f
    move-exception v0

    .line 101
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_4e
.end method
