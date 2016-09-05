.class Lcom/bzbs/lib/survey/util/RxPermissionUtils$3;
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
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/lib/survey/util/RxPermissionUtils;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/util/RxPermissionUtils;)V
    .registers 2

    .prologue
    .line 119
    iput-object p1, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils$3;->a:Lcom/bzbs/lib/survey/util/RxPermissionUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 119
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/bzbs/lib/survey/util/RxPermissionUtils$3;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .registers 3

    .prologue
    .line 123
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils$3;->a:Lcom/bzbs/lib/survey/util/RxPermissionUtils;

    invoke-static {v0}, Lcom/bzbs/lib/survey/util/RxPermissionUtils;->d(Lcom/bzbs/lib/survey/util/RxPermissionUtils;)Lcom/bzbs/lib/survey/util/AddOnPermissions;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 124
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils$3;->a:Lcom/bzbs/lib/survey/util/RxPermissionUtils;

    invoke-static {v0}, Lcom/bzbs/lib/survey/util/RxPermissionUtils;->d(Lcom/bzbs/lib/survey/util/RxPermissionUtils;)Lcom/bzbs/lib/survey/util/AddOnPermissions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bzbs/lib/survey/util/AddOnPermissions;->a()V

    .line 125
    :cond_11
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 126
    return-void
.end method
