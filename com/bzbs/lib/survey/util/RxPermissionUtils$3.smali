.class Lcom/bzbs/lib/survey/util/RxPermissionUtils$3;
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
        "Ljava/lang/Throwable;",
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
    .line 119
    iput-object p1, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils$3;->this$0:Lcom/bzbs/lib/survey/util/RxPermissionUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 119
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/bzbs/lib/survey/util/RxPermissionUtils$3;->call(Ljava/lang/Throwable;)V

    return-void
.end method

.method public call(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils$3;->this$0:Lcom/bzbs/lib/survey/util/RxPermissionUtils;

    # getter for: Lcom/bzbs/lib/survey/util/RxPermissionUtils;->onPermissions:Lcom/bzbs/lib/survey/util/AddOnPermissions;
    invoke-static {v0}, Lcom/bzbs/lib/survey/util/RxPermissionUtils;->access$1000(Lcom/bzbs/lib/survey/util/RxPermissionUtils;)Lcom/bzbs/lib/survey/util/AddOnPermissions;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 124
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils$3;->this$0:Lcom/bzbs/lib/survey/util/RxPermissionUtils;

    # getter for: Lcom/bzbs/lib/survey/util/RxPermissionUtils;->onPermissions:Lcom/bzbs/lib/survey/util/AddOnPermissions;
    invoke-static {v0}, Lcom/bzbs/lib/survey/util/RxPermissionUtils;->access$1000(Lcom/bzbs/lib/survey/util/RxPermissionUtils;)Lcom/bzbs/lib/survey/util/AddOnPermissions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bzbs/lib/survey/util/AddOnPermissions;->Error()V

    .line 125
    :cond_11
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 126
    return-void
.end method
