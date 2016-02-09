.class Lcom/samsung/privilege/activity/TermsApacheActivity$1;
.super Ljava/lang/Object;
.source "TermsApacheActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/TermsApacheActivity;->showToast(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/TermsApacheActivity;

.field private final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/TermsApacheActivity;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/TermsApacheActivity$1;->this$0:Lcom/samsung/privilege/activity/TermsApacheActivity;

    iput-object p2, p0, Lcom/samsung/privilege/activity/TermsApacheActivity$1;->val$msg:Ljava/lang/String;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 96
    iget-object v1, p0, Lcom/samsung/privilege/activity/TermsApacheActivity$1;->this$0:Lcom/samsung/privilege/activity/TermsApacheActivity;

    iget-object v2, p0, Lcom/samsung/privilege/activity/TermsApacheActivity$1;->val$msg:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 97
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 98
    return-void
.end method
