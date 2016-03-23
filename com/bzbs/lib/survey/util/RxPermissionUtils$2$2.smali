.class Lcom/bzbs/lib/survey/util/RxPermissionUtils$2$2;
.super Ljava/lang/Object;
.source "RxPermissionUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/util/RxPermissionUtils$2;->call(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bzbs/lib/survey/util/RxPermissionUtils$2;

.field final synthetic val$granted:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/util/RxPermissionUtils$2;Ljava/lang/Boolean;)V
    .registers 3
    .param p1, "this$1"    # Lcom/bzbs/lib/survey/util/RxPermissionUtils$2;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils$2$2;->this$1:Lcom/bzbs/lib/survey/util/RxPermissionUtils$2;

    iput-object p2, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils$2$2;->val$granted:Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 93
    iget-object v2, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils$2$2;->this$1:Lcom/bzbs/lib/survey/util/RxPermissionUtils$2;

    iget-object v2, v2, Lcom/bzbs/lib/survey/util/RxPermissionUtils$2;->this$0:Lcom/bzbs/lib/survey/util/RxPermissionUtils;

    # getter for: Lcom/bzbs/lib/survey/util/RxPermissionUtils;->onPermissions:Lcom/bzbs/lib/survey/util/AddOnPermissions;
    invoke-static {v2}, Lcom/bzbs/lib/survey/util/RxPermissionUtils;->access$1000(Lcom/bzbs/lib/survey/util/RxPermissionUtils;)Lcom/bzbs/lib/survey/util/AddOnPermissions;

    move-result-object v2

    if-eqz v2, :cond_1b

    .line 94
    iget-object v2, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils$2$2;->this$1:Lcom/bzbs/lib/survey/util/RxPermissionUtils$2;

    iget-object v2, v2, Lcom/bzbs/lib/survey/util/RxPermissionUtils$2;->this$0:Lcom/bzbs/lib/survey/util/RxPermissionUtils;

    # getter for: Lcom/bzbs/lib/survey/util/RxPermissionUtils;->onPermissions:Lcom/bzbs/lib/survey/util/AddOnPermissions;
    invoke-static {v2}, Lcom/bzbs/lib/survey/util/RxPermissionUtils;->access$1000(Lcom/bzbs/lib/survey/util/RxPermissionUtils;)Lcom/bzbs/lib/survey/util/AddOnPermissions;

    move-result-object v2

    iget-object v3, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils$2$2;->val$granted:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/bzbs/lib/survey/util/AddOnPermissions;->isGranted(Z)V

    .line 96
    :cond_1b
    :try_start_1b
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils$2$2;->this$1:Lcom/bzbs/lib/survey/util/RxPermissionUtils$2;

    iget-object v4, v4, Lcom/bzbs/lib/survey/util/RxPermissionUtils$2;->this$0:Lcom/bzbs/lib/survey/util/RxPermissionUtils;

    .line 97
    # getter for: Lcom/bzbs/lib/survey/util/RxPermissionUtils;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/bzbs/lib/survey/util/RxPermissionUtils;->access$900(Lcom/bzbs/lib/survey/util/RxPermissionUtils;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    .line 98
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils$2$2;->this$1:Lcom/bzbs/lib/survey/util/RxPermissionUtils$2;

    iget-object v2, v2, Lcom/bzbs/lib/survey/util/RxPermissionUtils$2;->this$0:Lcom/bzbs/lib/survey/util/RxPermissionUtils;

    # getter for: Lcom/bzbs/lib/survey/util/RxPermissionUtils;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/bzbs/lib/survey/util/RxPermissionUtils;->access$900(Lcom/bzbs/lib/survey/util/RxPermissionUtils;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_56
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1b .. :try_end_56} :catch_57

    .line 103
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_56
    return-void

    .line 99
    :catch_57
    move-exception v0

    .line 100
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_56
.end method
