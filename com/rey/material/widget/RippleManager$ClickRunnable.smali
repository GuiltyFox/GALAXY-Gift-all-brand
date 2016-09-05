.class Lcom/rey/material/widget/RippleManager$ClickRunnable;
.super Ljava/lang/Object;
.source "RippleManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Landroid/view/View;

.field final synthetic b:Lcom/rey/material/widget/RippleManager;


# direct methods
.method public constructor <init>(Lcom/rey/material/widget/RippleManager;Landroid/view/View;)V
    .registers 3

    .prologue
    .line 119
    iput-object p1, p0, Lcom/rey/material/widget/RippleManager$ClickRunnable;->b:Lcom/rey/material/widget/RippleManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object p2, p0, Lcom/rey/material/widget/RippleManager$ClickRunnable;->a:Landroid/view/View;

    .line 121
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 125
    iget-object v0, p0, Lcom/rey/material/widget/RippleManager$ClickRunnable;->b:Lcom/rey/material/widget/RippleManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/rey/material/widget/RippleManager;->a(Lcom/rey/material/widget/RippleManager;Z)Z

    .line 126
    iget-object v0, p0, Lcom/rey/material/widget/RippleManager$ClickRunnable;->b:Lcom/rey/material/widget/RippleManager;

    iget-object v1, p0, Lcom/rey/material/widget/RippleManager$ClickRunnable;->a:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/rey/material/widget/RippleManager;->a(Lcom/rey/material/widget/RippleManager;Landroid/view/View;)V

    .line 127
    return-void
.end method
