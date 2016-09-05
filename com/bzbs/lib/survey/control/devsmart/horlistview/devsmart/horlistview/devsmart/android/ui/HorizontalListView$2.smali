.class Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView$2;
.super Ljava/lang/Object;
.source "HorizontalListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->onLayout(ZIIII)V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;)V
    .registers 2

    .prologue
    .line 199
    iput-object p1, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView$2;->a:Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView$2;->a:Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;

    invoke-virtual {v0}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->requestLayout()V

    .line 203
    return-void
.end method
