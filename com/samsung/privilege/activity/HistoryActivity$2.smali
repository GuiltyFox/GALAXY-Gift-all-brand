.class Lcom/samsung/privilege/activity/HistoryActivity$2;
.super Ljava/lang/Object;
.source "HistoryActivity.java"

# interfaces
.implements Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/HistoryActivity;->bindingEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/HistoryActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/HistoryActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/privilege/activity/HistoryActivity;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/samsung/privilege/activity/HistoryActivity$2;->this$0:Lcom/samsung/privilege/activity/HistoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .registers 3

    .prologue
    .line 126
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryActivity$2;->this$0:Lcom/samsung/privilege/activity/HistoryActivity;

    const/4 v1, 0x0

    # invokes: Lcom/samsung/privilege/activity/HistoryActivity;->loadHistory(I)V
    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/HistoryActivity;->access$000(Lcom/samsung/privilege/activity/HistoryActivity;I)V

    .line 127
    return-void
.end method
