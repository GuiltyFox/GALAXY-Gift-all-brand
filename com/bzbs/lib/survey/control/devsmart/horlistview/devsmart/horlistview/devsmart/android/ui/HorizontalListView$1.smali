.class Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView$1;
.super Landroid/database/DataSetObserver;
.source "HorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView$1;->this$0:Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 4

    .prologue
    .line 99
    iget-object v1, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView$1;->this$0:Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;

    monitor-enter v1

    .line 100
    :try_start_3
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView$1;->this$0:Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;

    const/4 v2, 0x1

    # setter for: Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->mDataChanged:Z
    invoke-static {v0, v2}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->access$002(Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;Z)Z

    .line 101
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_15

    .line 102
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView$1;->this$0:Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;

    invoke-virtual {v0}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->invalidate()V

    .line 103
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView$1;->this$0:Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;

    invoke-virtual {v0}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->requestLayout()V

    .line 104
    return-void

    .line 101
    :catchall_15
    move-exception v0

    :try_start_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public onInvalidated()V
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView$1;->this$0:Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;

    # invokes: Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->reset()V
    invoke-static {v0}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->access$100(Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;)V

    .line 109
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView$1;->this$0:Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;

    invoke-virtual {v0}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->invalidate()V

    .line 110
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView$1;->this$0:Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;

    invoke-virtual {v0}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->requestLayout()V

    .line 111
    return-void
.end method
