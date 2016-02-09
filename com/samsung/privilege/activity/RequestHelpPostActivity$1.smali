.class Lcom/samsung/privilege/activity/RequestHelpPostActivity$1;
.super Ljava/lang/Object;
.source "RequestHelpPostActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/RequestHelpPostActivity;->showToast(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/RequestHelpPostActivity;

.field private final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/RequestHelpPostActivity;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/RequestHelpPostActivity$1;->this$0:Lcom/samsung/privilege/activity/RequestHelpPostActivity;

    iput-object p2, p0, Lcom/samsung/privilege/activity/RequestHelpPostActivity$1;->val$msg:Ljava/lang/String;

    .line 689
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 692
    iget-object v1, p0, Lcom/samsung/privilege/activity/RequestHelpPostActivity$1;->this$0:Lcom/samsung/privilege/activity/RequestHelpPostActivity;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/RequestHelpPostActivity$1;->val$msg:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 693
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 694
    return-void
.end method
