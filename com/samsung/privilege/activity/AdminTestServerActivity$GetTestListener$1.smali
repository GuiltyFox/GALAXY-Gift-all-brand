.class Lcom/samsung/privilege/activity/AdminTestServerActivity$GetTestListener$1;
.super Ljava/lang/Object;
.source "AdminTestServerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/AdminTestServerActivity$GetTestListener;->onComplete(ILjava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/activity/AdminTestServerActivity$GetTestListener;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/AdminTestServerActivity$GetTestListener;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/AdminTestServerActivity$GetTestListener$1;->this$1:Lcom/samsung/privilege/activity/AdminTestServerActivity$GetTestListener;

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 212
    iget-object v0, p0, Lcom/samsung/privilege/activity/AdminTestServerActivity$GetTestListener$1;->this$1:Lcom/samsung/privilege/activity/AdminTestServerActivity$GetTestListener;

    # getter for: Lcom/samsung/privilege/activity/AdminTestServerActivity$GetTestListener;->this$0:Lcom/samsung/privilege/activity/AdminTestServerActivity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/AdminTestServerActivity$GetTestListener;->access$0(Lcom/samsung/privilege/activity/AdminTestServerActivity$GetTestListener;)Lcom/samsung/privilege/activity/AdminTestServerActivity;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/AdminTestServerActivity;->tvDesc:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/samsung/privilege/activity/AdminTestServerActivity;->access$3(Lcom/samsung/privilege/activity/AdminTestServerActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/AdminTestServerActivity$GetTestListener$1;->this$1:Lcom/samsung/privilege/activity/AdminTestServerActivity$GetTestListener;

    # getter for: Lcom/samsung/privilege/activity/AdminTestServerActivity$GetTestListener;->this$0:Lcom/samsung/privilege/activity/AdminTestServerActivity;
    invoke-static {v1}, Lcom/samsung/privilege/activity/AdminTestServerActivity$GetTestListener;->access$0(Lcom/samsung/privilege/activity/AdminTestServerActivity$GetTestListener;)Lcom/samsung/privilege/activity/AdminTestServerActivity;

    move-result-object v1

    # getter for: Lcom/samsung/privilege/activity/AdminTestServerActivity;->gStrData:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/privilege/activity/AdminTestServerActivity;->access$1(Lcom/samsung/privilege/activity/AdminTestServerActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    sget-object v2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 213
    return-void
.end method
