.class Lcom/samsung/privilege/util/DialogUtil$2;
.super Ljava/lang/Object;
.source "DialogUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogUtil;->showDialogMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$activityContext:Landroid/content/Context;

.field private final synthetic val$code:Ljava/lang/String;

.field private final synthetic val$dialogSerial:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Landroid/app/Dialog;Ljava/lang/String;Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogUtil$2;->val$dialogSerial:Landroid/app/Dialog;

    iput-object p2, p0, Lcom/samsung/privilege/util/DialogUtil$2;->val$code:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/privilege/util/DialogUtil$2;->val$activityContext:Landroid/content/Context;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogUtil$2;->val$dialogSerial:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 122
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogUtil$2;->val$code:Ljava/lang/String;

    const-string v1, "403"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 123
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogUtil$2;->val$activityContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/privilege/UserLogin;->Logout(Landroid/content/Context;Z)V

    .line 125
    :cond_15
    return-void
.end method
