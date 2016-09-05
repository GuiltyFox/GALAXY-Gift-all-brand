.class Lcom/samsung/privilege/control/toggle/ToggleButton$1;
.super Ljava/lang/Object;
.source "ToggleButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/control/toggle/ToggleButton;->a(Landroid/util/AttributeSet;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/control/toggle/ToggleButton;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/control/toggle/ToggleButton;)V
    .registers 2

    .prologue
    .line 103
    iput-object p1, p0, Lcom/samsung/privilege/control/toggle/ToggleButton$1;->a:Lcom/samsung/privilege/control/toggle/ToggleButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 106
    iget-object v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton$1;->a:Lcom/samsung/privilege/control/toggle/ToggleButton;

    iget-object v1, p0, Lcom/samsung/privilege/control/toggle/ToggleButton$1;->a:Lcom/samsung/privilege/control/toggle/ToggleButton;

    invoke-static {v1}, Lcom/samsung/privilege/control/toggle/ToggleButton;->a(Lcom/samsung/privilege/control/toggle/ToggleButton;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/control/toggle/ToggleButton;->a(Z)V

    .line 107
    return-void
.end method
