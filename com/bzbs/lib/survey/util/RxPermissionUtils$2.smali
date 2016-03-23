.class Lcom/bzbs/lib/survey/util/RxPermissionUtils$2;
.super Ljava/lang/Object;
.source "RxPermissionUtils.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/util/RxPermissionUtils;->request()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Action1",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bzbs/lib/survey/util/RxPermissionUtils;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/util/RxPermissionUtils;)V
    .registers 2
    .param p1, "this$0"    # Lcom/bzbs/lib/survey/util/RxPermissionUtils;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils$2;->this$0:Lcom/bzbs/lib/survey/util/RxPermissionUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Boolean;)V
    .registers 7
    .param p1, "granted"    # Ljava/lang/Boolean;

    .prologue
    .line 73
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_52

    .line 74
    iget-object v2, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils$2;->this$0:Lcom/bzbs/lib/survey/util/RxPermissionUtils;

    # getter for: Lcom/bzbs/lib/survey/util/RxPermissionUtils;->denyPermission:Ljava/lang/String;
    invoke-static {v2}, Lcom/bzbs/lib/survey/util/RxPermissionUtils;->access$800(Lcom/bzbs/lib/survey/util/RxPermissionUtils;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4c

    .line 77
    :try_start_e
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils$2;->this$0:Lcom/bzbs/lib/survey/util/RxPermissionUtils;

    # getter for: Lcom/bzbs/lib/survey/util/RxPermissionUtils;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/bzbs/lib/survey/util/RxPermissionUtils;->access$900(Lcom/bzbs/lib/survey/util/RxPermissionUtils;)Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/bzbs/lib/survey/R$style;->DialogPermission:I

    invoke-direct {v0, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 79
    .local v0, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    iget-object v2, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils$2;->this$0:Lcom/bzbs/lib/survey/util/RxPermissionUtils;

    # getter for: Lcom/bzbs/lib/survey/util/RxPermissionUtils;->denyPermission:Ljava/lang/String;
    invoke-static {v2}, Lcom/bzbs/lib/survey/util/RxPermissionUtils;->access$800(Lcom/bzbs/lib/survey/util/RxPermissionUtils;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    .line 80
    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils$2;->this$0:Lcom/bzbs/lib/survey/util/RxPermissionUtils;

    .line 81
    # getter for: Lcom/bzbs/lib/survey/util/RxPermissionUtils;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/bzbs/lib/survey/util/RxPermissionUtils;->access$900(Lcom/bzbs/lib/survey/util/RxPermissionUtils;)Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/bzbs/lib/survey/R$string;->txt_close:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/bzbs/lib/survey/util/RxPermissionUtils$2$1;

    invoke-direct {v4, p0, p1}, Lcom/bzbs/lib/survey/util/RxPermissionUtils$2$1;-><init>(Lcom/bzbs/lib/survey/util/RxPermissionUtils$2;Ljava/lang/Boolean;)V

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 90
    const-string/jumbo v2, "OK"

    new-instance v3, Lcom/bzbs/lib/survey/util/RxPermissionUtils$2$2;

    invoke-direct {v3, p0, p1}, Lcom/bzbs/lib/survey/util/RxPermissionUtils$2$2;-><init>(Lcom/bzbs/lib/survey/util/RxPermissionUtils$2;Ljava/lang/Boolean;)V

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 107
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_4c} :catch_4d

    .line 118
    .end local v0    # "builder":Landroid/support/v7/app/AlertDialog$Builder;
    :cond_4c
    :goto_4c
    return-void

    .line 108
    :catch_4d
    move-exception v1

    .line 109
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4c

    .line 115
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_52
    iget-object v2, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils$2;->this$0:Lcom/bzbs/lib/survey/util/RxPermissionUtils;

    # getter for: Lcom/bzbs/lib/survey/util/RxPermissionUtils;->onPermissions:Lcom/bzbs/lib/survey/util/AddOnPermissions;
    invoke-static {v2}, Lcom/bzbs/lib/survey/util/RxPermissionUtils;->access$1000(Lcom/bzbs/lib/survey/util/RxPermissionUtils;)Lcom/bzbs/lib/survey/util/AddOnPermissions;

    move-result-object v2

    if-eqz v2, :cond_4c

    .line 116
    iget-object v2, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils$2;->this$0:Lcom/bzbs/lib/survey/util/RxPermissionUtils;

    # getter for: Lcom/bzbs/lib/survey/util/RxPermissionUtils;->onPermissions:Lcom/bzbs/lib/survey/util/AddOnPermissions;
    invoke-static {v2}, Lcom/bzbs/lib/survey/util/RxPermissionUtils;->access$1000(Lcom/bzbs/lib/survey/util/RxPermissionUtils;)Lcom/bzbs/lib/survey/util/AddOnPermissions;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/bzbs/lib/survey/util/AddOnPermissions;->isGranted(Z)V

    goto :goto_4c
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 70
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/bzbs/lib/survey/util/RxPermissionUtils$2;->call(Ljava/lang/Boolean;)V

    return-void
.end method
