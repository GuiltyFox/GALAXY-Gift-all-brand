.class final Lcom/bzbs/lib/survey/util/RxPermissionUtils$5;
.super Ljava/lang/Object;
.source "RxPermissionUtils.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/util/RxPermissionUtils;->request(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/bzbs/lib/survey/util/AddOnPermissions;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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
.field final synthetic val$denyPermission:Ljava/lang/String;

.field final synthetic val$mContext:Landroid/content/Context;

.field final synthetic val$onPermissions:Lcom/bzbs/lib/survey/util/AddOnPermissions;

.field final synthetic val$style:I


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;ILcom/bzbs/lib/survey/util/AddOnPermissions;)V
    .registers 5

    .prologue
    .line 145
    iput-object p1, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils$5;->val$denyPermission:Ljava/lang/String;

    iput-object p2, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils$5;->val$mContext:Landroid/content/Context;

    iput p3, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils$5;->val$style:I

    iput-object p4, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils$5;->val$onPermissions:Lcom/bzbs/lib/survey/util/AddOnPermissions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Boolean;)V
    .registers 7
    .param p1, "granted"    # Ljava/lang/Boolean;

    .prologue
    .line 150
    iget-object v2, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils$5;->val$denyPermission:Ljava/lang/String;

    if-eqz v2, :cond_36

    .line 153
    :try_start_4
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils$5;->val$mContext:Landroid/content/Context;

    iget v3, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils$5;->val$style:I

    invoke-direct {v0, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 156
    .local v0, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    iget-object v2, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils$5;->val$denyPermission:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    .line 157
    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils$5;->val$mContext:Landroid/content/Context;

    sget v4, Lcom/bzbs/lib/survey/R$string;->txt_close:I

    .line 158
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/bzbs/lib/survey/util/RxPermissionUtils$5$1;

    invoke-direct {v4, p0}, Lcom/bzbs/lib/survey/util/RxPermissionUtils$5$1;-><init>(Lcom/bzbs/lib/survey/util/RxPermissionUtils$5;)V

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 165
    const-string/jumbo v2, "OK"

    new-instance v3, Lcom/bzbs/lib/survey/util/RxPermissionUtils$5$2;

    invoke-direct {v3, p0}, Lcom/bzbs/lib/survey/util/RxPermissionUtils$5$2;-><init>(Lcom/bzbs/lib/survey/util/RxPermissionUtils$5;)V

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 180
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_36} :catch_40

    .line 188
    .end local v0    # "builder":Landroid/support/v7/app/AlertDialog$Builder;
    :cond_36
    :goto_36
    iget-object v2, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils$5;->val$onPermissions:Lcom/bzbs/lib/survey/util/AddOnPermissions;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/bzbs/lib/survey/util/AddOnPermissions;->isGranted(Z)V

    .line 189
    return-void

    .line 181
    :catch_40
    move-exception v1

    .line 182
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_36
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 145
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/bzbs/lib/survey/util/RxPermissionUtils$5;->call(Ljava/lang/Boolean;)V

    return-void
.end method
