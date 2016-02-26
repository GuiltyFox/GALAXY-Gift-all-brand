.class Lcom/samsung/privilege/util/DialogUtil$3$1;
.super Ljava/lang/Object;
.source "DialogUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogUtil$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/util/DialogUtil$3;

.field private final synthetic val$activityContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/util/DialogUtil$3;Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogUtil$3$1;->this$1:Lcom/samsung/privilege/util/DialogUtil$3;

    iput-object p2, p0, Lcom/samsung/privilege/util/DialogUtil$3$1;->val$activityContext:Landroid/content/Context;

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogUtil$3$1;->val$activityContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/privilege/util/DialogUtil;->showDialogPointTransferConfirm(Landroid/content/Context;)V

    .line 170
    return-void
.end method
