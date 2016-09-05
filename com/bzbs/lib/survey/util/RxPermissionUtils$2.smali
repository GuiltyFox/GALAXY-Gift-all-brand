.class Lcom/bzbs/lib/survey/util/RxPermissionUtils$2;
.super Ljava/lang/Object;
.source "RxPermissionUtils.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/util/RxPermissionUtils;->b()V
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
.field final synthetic a:Lcom/bzbs/lib/survey/util/RxPermissionUtils;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/util/RxPermissionUtils;)V
    .registers 2

    .prologue
    .line 70
    iput-object p1, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils$2;->a:Lcom/bzbs/lib/survey/util/RxPermissionUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)V
    .registers 6

    .prologue
    .line 73
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_52

    .line 74
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils$2;->a:Lcom/bzbs/lib/survey/util/RxPermissionUtils;

    invoke-static {v0}, Lcom/bzbs/lib/survey/util/RxPermissionUtils;->b(Lcom/bzbs/lib/survey/util/RxPermissionUtils;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4c

    .line 77
    :try_start_e
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils$2;->a:Lcom/bzbs/lib/survey/util/RxPermissionUtils;

    invoke-static {v1}, Lcom/bzbs/lib/survey/util/RxPermissionUtils;->c(Lcom/bzbs/lib/survey/util/RxPermissionUtils;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/bzbs/lib/survey/R$style;->DialogPermission:I

    invoke-direct {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 79
    iget-object v1, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils$2;->a:Lcom/bzbs/lib/survey/util/RxPermissionUtils;

    invoke-static {v1}, Lcom/bzbs/lib/survey/util/RxPermissionUtils;->b(Lcom/bzbs/lib/survey/util/RxPermissionUtils;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->b(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 80
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->a(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils$2;->a:Lcom/bzbs/lib/survey/util/RxPermissionUtils;

    .line 81
    invoke-static {v2}, Lcom/bzbs/lib/survey/util/RxPermissionUtils;->c(Lcom/bzbs/lib/survey/util/RxPermissionUtils;)Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/bzbs/lib/survey/R$string;->txt_close:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/bzbs/lib/survey/util/RxPermissionUtils$2$1;

    invoke-direct {v3, p0, p1}, Lcom/bzbs/lib/survey/util/RxPermissionUtils$2$1;-><init>(Lcom/bzbs/lib/survey/util/RxPermissionUtils$2;Ljava/lang/Boolean;)V

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 90
    const-string/jumbo v1, "OK"

    new-instance v2, Lcom/bzbs/lib/survey/util/RxPermissionUtils$2$2;

    invoke-direct {v2, p0, p1}, Lcom/bzbs/lib/survey/util/RxPermissionUtils$2$2;-><init>(Lcom/bzbs/lib/survey/util/RxPermissionUtils$2;Ljava/lang/Boolean;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 107
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->c()Landroid/support/v7/app/AlertDialog;
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_4c} :catch_4d

    .line 118
    :cond_4c
    :goto_4c
    return-void

    .line 108
    :catch_4d
    move-exception v0

    .line 109
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4c

    .line 115
    :cond_52
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils$2;->a:Lcom/bzbs/lib/survey/util/RxPermissionUtils;

    invoke-static {v0}, Lcom/bzbs/lib/survey/util/RxPermissionUtils;->d(Lcom/bzbs/lib/survey/util/RxPermissionUtils;)Lcom/bzbs/lib/survey/util/AddOnPermissions;

    move-result-object v0

    if-eqz v0, :cond_4c

    .line 116
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils$2;->a:Lcom/bzbs/lib/survey/util/RxPermissionUtils;

    invoke-static {v0}, Lcom/bzbs/lib/survey/util/RxPermissionUtils;->d(Lcom/bzbs/lib/survey/util/RxPermissionUtils;)Lcom/bzbs/lib/survey/util/AddOnPermissions;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/survey/util/AddOnPermissions;->a(Z)V

    goto :goto_4c
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 70
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/bzbs/lib/survey/util/RxPermissionUtils$2;->a(Ljava/lang/Boolean;)V

    return-void
.end method
