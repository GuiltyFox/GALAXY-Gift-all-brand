.class final Lcom/bzbs/lib/survey/util/RxPermissionUtils$6;
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
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$onPermissions:Lcom/bzbs/lib/survey/util/AddOnPermissions;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/util/AddOnPermissions;)V
    .registers 2

    .prologue
    .line 190
    iput-object p1, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils$6;->val$onPermissions:Lcom/bzbs/lib/survey/util/AddOnPermissions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 190
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/bzbs/lib/survey/util/RxPermissionUtils$6;->call(Ljava/lang/Throwable;)V

    return-void
.end method

.method public call(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils$6;->val$onPermissions:Lcom/bzbs/lib/survey/util/AddOnPermissions;

    invoke-virtual {v0}, Lcom/bzbs/lib/survey/util/AddOnPermissions;->Error()V

    .line 195
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 196
    return-void
.end method
