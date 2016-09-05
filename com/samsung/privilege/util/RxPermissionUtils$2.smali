.class Lcom/samsung/privilege/util/RxPermissionUtils$2;
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
    .line 82
    iput-object p1, p0, Lcom/samsung/privilege/util/RxPermissionUtils$2;->b:Lcom/samsung/privilege/util/RxPermissionUtils;

    iput-object p2, p0, Lcom/samsung/privilege/util/RxPermissionUtils$2;->a:Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .prologue
    .line 85
    iget-object v0, p0, Lcom/samsung/privilege/util/RxPermissionUtils$2;->b:Lcom/samsung/privilege/util/RxPermissionUtils;

    invoke-static {v0}, Lcom/samsung/privilege/util/RxPermissionUtils;->b(Lcom/samsung/privilege/util/RxPermissionUtils;)Lcom/samsung/privilege/util/AddOnPermissions;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 86
    iget-object v0, p0, Lcom/samsung/privilege/util/RxPermissionUtils$2;->b:Lcom/samsung/privilege/util/RxPermissionUtils;

    invoke-static {v0}, Lcom/samsung/privilege/util/RxPermissionUtils;->b(Lcom/samsung/privilege/util/RxPermissionUtils;)Lcom/samsung/privilege/util/AddOnPermissions;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/util/RxPermissionUtils$2;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/util/AddOnPermissions;->a(Z)V

    .line 87
    :cond_17
    return-void
.end method
