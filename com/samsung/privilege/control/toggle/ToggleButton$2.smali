.class Lcom/samsung/privilege/control/toggle/ToggleButton$2;
.super Lcom/facebook/rebound/SimpleSpringListener;
.source "ToggleButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/control/toggle/ToggleButton;
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/control/toggle/ToggleButton;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/control/toggle/ToggleButton;)V
    .registers 2

    .prologue
    .line 232
    iput-object p1, p0, Lcom/samsung/privilege/control/toggle/ToggleButton$2;->a:Lcom/samsung/privilege/control/toggle/ToggleButton;

    invoke-direct {p0}, Lcom/facebook/rebound/SimpleSpringListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSpringUpdate(Lcom/facebook/rebound/Spring;)V
    .registers 5

    .prologue
    .line 235
    invoke-virtual {p1}, Lcom/facebook/rebound/Spring;->getCurrentValue()D

    move-result-wide v0

    .line 236
    iget-object v2, p0, Lcom/samsung/privilege/control/toggle/ToggleButton$2;->a:Lcom/samsung/privilege/control/toggle/ToggleButton;

    invoke-static {v2, v0, v1}, Lcom/samsung/privilege/control/toggle/ToggleButton;->a(Lcom/samsung/privilege/control/toggle/ToggleButton;D)V

    .line 237
    return-void
.end method
