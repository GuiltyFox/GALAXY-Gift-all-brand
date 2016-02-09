.class Lcom/samsung/privilege/util/DialogUtil$6$1;
.super Ljava/lang/Object;
.source "DialogUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogUtil$6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/util/DialogUtil$6;

.field private final synthetic val$activityContext:Landroid/content/Context;

.field private final synthetic val$is_auto_login_fb:Z


# direct methods
.method constructor <init>(Lcom/samsung/privilege/util/DialogUtil$6;Landroid/content/Context;Z)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogUtil$6$1;->this$1:Lcom/samsung/privilege/util/DialogUtil$6;

    iput-object p2, p0, Lcom/samsung/privilege/util/DialogUtil$6$1;->val$activityContext:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/samsung/privilege/util/DialogUtil$6$1;->val$is_auto_login_fb:Z

    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 337
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogUtil$6$1;->val$activityContext:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/samsung/privilege/util/DialogUtil$6$1;->val$is_auto_login_fb:Z

    invoke-static {v0, v1}, Lcom/samsung/privilege/UserLogin;->Logout(Landroid/content/Context;Z)V

    .line 338
    return-void
.end method
