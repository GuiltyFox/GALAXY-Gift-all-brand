.class Lcom/samsung/privilege/control/wheel/WheelView$3;
.super Ljava/lang/Object;
.source "WheelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/control/wheel/WheelView;->setSeletion(I)V
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/samsung/privilege/control/wheel/WheelView;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/control/wheel/WheelView;I)V
    .registers 3

    .prologue
    .line 380
    iput-object p1, p0, Lcom/samsung/privilege/control/wheel/WheelView$3;->b:Lcom/samsung/privilege/control/wheel/WheelView;

    iput p2, p0, Lcom/samsung/privilege/control/wheel/WheelView$3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 383
    iget-object v0, p0, Lcom/samsung/privilege/control/wheel/WheelView$3;->b:Lcom/samsung/privilege/control/wheel/WheelView;

    const/4 v1, 0x0

    iget v2, p0, Lcom/samsung/privilege/control/wheel/WheelView$3;->a:I

    iget-object v3, p0, Lcom/samsung/privilege/control/wheel/WheelView$3;->b:Lcom/samsung/privilege/control/wheel/WheelView;

    iget v3, v3, Lcom/samsung/privilege/control/wheel/WheelView;->i:I

    mul-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/privilege/control/wheel/WheelView;->smoothScrollTo(II)V

    .line 384
    return-void
.end method
