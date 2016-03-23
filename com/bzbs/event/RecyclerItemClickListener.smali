.class public Lcom/bzbs/event/RecyclerItemClickListener;
.super Ljava/lang/Object;
.source "RecyclerItemClickListener.java"

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bzbs/event/RecyclerItemClickListener$OnItemClickListener;
    }
.end annotation


# instance fields
.field mGestureDetector:Landroid/view/GestureDetector;

.field private mListener:Lcom/bzbs/event/RecyclerItemClickListener$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bzbs/event/RecyclerItemClickListener$OnItemClickListener;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/bzbs/event/RecyclerItemClickListener$OnItemClickListener;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p2, p0, Lcom/bzbs/event/RecyclerItemClickListener;->mListener:Lcom/bzbs/event/RecyclerItemClickListener$OnItemClickListener;

    .line 20
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/bzbs/event/RecyclerItemClickListener$1;

    invoke-direct {v1, p0}, Lcom/bzbs/event/RecyclerItemClickListener$1;-><init>(Lcom/bzbs/event/RecyclerItemClickListener;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/bzbs/event/RecyclerItemClickListener;->mGestureDetector:Landroid/view/GestureDetector;

    .line 25
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "view"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 28
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/support/v7/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    .line 29
    .local v0, "childView":Landroid/view/View;
    if-eqz v0, :cond_25

    iget-object v1, p0, Lcom/bzbs/event/RecyclerItemClickListener;->mListener:Lcom/bzbs/event/RecyclerItemClickListener$OnItemClickListener;

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/bzbs/event/RecyclerItemClickListener;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 30
    iget-object v1, p0, Lcom/bzbs/event/RecyclerItemClickListener;->mListener:Lcom/bzbs/event/RecyclerItemClickListener$OnItemClickListener;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->getChildPosition(Landroid/view/View;)I

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/bzbs/event/RecyclerItemClickListener$OnItemClickListener;->onItemClick(Landroid/view/View;I)V

    .line 31
    const/4 v1, 0x1

    .line 33
    :goto_24
    return v1

    :cond_25
    const/4 v1, 0x0

    goto :goto_24
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .registers 2
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 41
    return-void
.end method

.method public onTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .registers 3
    .param p1, "view"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 36
    return-void
.end method
