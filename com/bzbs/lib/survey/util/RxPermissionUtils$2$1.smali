.class Lcom/bzbs/lib/survey/util/RxPermissionUtils$2$1;
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
    .line 81
    iput-object p1, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils$2$1;->this$1:Lcom/bzbs/lib/survey/util/RxPermissionUtils$2;

    iput-object p2, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils$2$1;->val$granted:Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 84
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils$2$1;->this$1:Lcom/bzbs/lib/survey/util/RxPermissionUtils$2;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/RxPermissionUtils$2;->this$0:Lcom/bzbs/lib/survey/util/RxPermissionUtils;

    # getter for: Lcom/bzbs/lib/survey/util/RxPermissionUtils;->onPermissions:Lcom/bzbs/lib/survey/util/AddOnPermissions;
    invoke-static {v0}, Lcom/bzbs/lib/survey/util/RxPermissionUtils;->access$1000(Lcom/bzbs/lib/survey/util/RxPermissionUtils;)Lcom/bzbs/lib/survey/util/AddOnPermissions;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 85
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils$2$1;->this$1:Lcom/bzbs/lib/survey/util/RxPermissionUtils$2;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/RxPermissionUtils$2;->this$0:Lcom/bzbs/lib/survey/util/RxPermissionUtils;

    # getter for: Lcom/bzbs/lib/survey/util/RxPermissionUtils;->onPermissions:Lcom/bzbs/lib/survey/util/AddOnPermissions;
    invoke-static {v0}, Lcom/bzbs/lib/survey/util/RxPermissionUtils;->access$1000(Lcom/bzbs/lib/survey/util/RxPermissionUtils;)Lcom/bzbs/lib/survey/util/AddOnPermissions;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils$2$1;->val$granted:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/survey/util/AddOnPermissions;->isGranted(Z)V

    .line 86
    :cond_1b
    return-void
.end method
