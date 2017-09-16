.class Lcom/samsung/privilege/control/wheel/WheelView$1;
.super Ljava/lang/Object;
.source "WheelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/control/wheel/WheelView;->a(Landroid/content/Context;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/control/wheel/WheelView;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/control/wheel/WheelView;)V
    .registers 2

    .prologue
    .line 114
    iput-object p1, p0, Lcom/samsung/privilege/control/wheel/WheelView$1;->a:Lcom/samsung/privilege/control/wheel/WheelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 118
    iget-object v0, p0, Lcom/samsung/privilege/control/wheel/WheelView$1;->a:Lcom/samsung/privilege/control/wheel/WheelView;

    invoke-virtual {v0}, Lcom/samsung/privilege/control/wheel/WheelView;->getScrollY()I

    move-result v0

    .line 119
    iget-object v1, p0, Lcom/samsung/privilege/control/wheel/WheelView$1;->a:Lcom/samsung/privilege/control/wheel/WheelView;

    iget v1, v1, Lcom/samsung/privilege/control/wheel/WheelView;->f:I

    sub-int v0, v1, v0

    if-nez v0, :cond_4f

    .line 120
    iget-object v0, p0, Lcom/samsung/privilege/control/wheel/WheelView$1;->a:Lcom/samsung/privilege/control/wheel/WheelView;

    iget v0, v0, Lcom/samsung/privilege/control/wheel/WheelView;->f:I

    iget-object v1, p0, Lcom/samsung/privilege/control/wheel/WheelView$1;->a:Lcom/samsung/privilege/control/wheel/WheelView;

    iget v1, v1, Lcom/samsung/privilege/control/wheel/WheelView;->i:I

    rem-int/2addr v0, v1

    .line 121
    iget-object v1, p0, Lcom/samsung/privilege/control/wheel/WheelView$1;->a:Lcom/samsung/privilege/control/wheel/WheelView;

    iget v1, v1, Lcom/samsung/privilege/control/wheel/WheelView;->f:I

    iget-object v2, p0, Lcom/samsung/privilege/control/wheel/WheelView$1;->a:Lcom/samsung/privilege/control/wheel/WheelView;

    iget v2, v2, Lcom/samsung/privilege/control/wheel/WheelView;->i:I

    div-int/2addr v1, v2

    .line 124
    if-nez v0, :cond_31

    .line 125
    iget-object v0, p0, Lcom/samsung/privilege/control/wheel/WheelView$1;->a:Lcom/samsung/privilege/control/wheel/WheelView;

    iget-object v2, p0, Lcom/samsung/privilege/control/wheel/WheelView$1;->a:Lcom/samsung/privilege/control/wheel/WheelView;

    iget v2, v2, Lcom/samsung/privilege/control/wheel/WheelView;->c:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/samsung/privilege/control/wheel/WheelView;->e:I

    .line 127
    iget-object v0, p0, Lcom/samsung/privilege/control/wheel/WheelView$1;->a:Lcom/samsung/privilege/control/wheel/WheelView;

    invoke-static {v0}, Lcom/samsung/privilege/control/wheel/WheelView;->a(Lcom/samsung/privilege/control/wheel/WheelView;)V

    .line 157
    :goto_30
    return-void

    .line 129
    :cond_31
    iget-object v2, p0, Lcom/samsung/privilege/control/wheel/WheelView$1;->a:Lcom/samsung/privilege/control/wheel/WheelView;

    iget v2, v2, Lcom/samsung/privilege/control/wheel/WheelView;->i:I

    div-int/lit8 v2, v2, 0x2

    if-le v0, v2, :cond_44

    .line 130
    iget-object v2, p0, Lcom/samsung/privilege/control/wheel/WheelView$1;->a:Lcom/samsung/privilege/control/wheel/WheelView;

    new-instance v3, Lcom/samsung/privilege/control/wheel/WheelView$1$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/samsung/privilege/control/wheel/WheelView$1$1;-><init>(Lcom/samsung/privilege/control/wheel/WheelView$1;II)V

    invoke-virtual {v2, v3}, Lcom/samsung/privilege/control/wheel/WheelView;->post(Ljava/lang/Runnable;)Z

    goto :goto_30

    .line 139
    :cond_44
    iget-object v2, p0, Lcom/samsung/privilege/control/wheel/WheelView$1;->a:Lcom/samsung/privilege/control/wheel/WheelView;

    new-instance v3, Lcom/samsung/privilege/control/wheel/WheelView$1$2;

    invoke-direct {v3, p0, v0, v1}, Lcom/samsung/privilege/control/wheel/WheelView$1$2;-><init>(Lcom/samsung/privilege/control/wheel/WheelView$1;II)V

    invoke-virtual {v2, v3}, Lcom/samsung/privilege/control/wheel/WheelView;->post(Ljava/lang/Runnable;)Z

    goto :goto_30

    .line 154
    :cond_4f
    iget-object v0, p0, Lcom/samsung/privilege/control/wheel/WheelView$1;->a:Lcom/samsung/privilege/control/wheel/WheelView;

    iget-object v1, p0, Lcom/samsung/privilege/control/wheel/WheelView$1;->a:Lcom/samsung/privilege/control/wheel/WheelView;

    invoke-virtual {v1}, Lcom/samsung/privilege/control/wheel/WheelView;->getScrollY()I

    move-result v1

    iput v1, v0, Lcom/samsung/privilege/control/wheel/WheelView;->f:I

    .line 155
    iget-object v0, p0, Lcom/samsung/privilege/control/wheel/WheelView$1;->a:Lcom/samsung/privilege/control/wheel/WheelView;

    iget-object v1, p0, Lcom/samsung/privilege/control/wheel/WheelView$1;->a:Lcom/samsung/privilege/control/wheel/WheelView;

    iget-object v1, v1, Lcom/samsung/privilege/control/wheel/WheelView;->g:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/samsung/privilege/control/wheel/WheelView$1;->a:Lcom/samsung/privilege/control/wheel/WheelView;

    iget v2, v2, Lcom/samsung/privilege/control/wheel/WheelView;->h:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/privilege/control/wheel/WheelView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_30
.end method
