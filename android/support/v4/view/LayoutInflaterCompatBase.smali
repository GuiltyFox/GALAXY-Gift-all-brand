.class Landroid/support/v4/view/LayoutInflaterCompatBase;
.super Ljava/lang/Object;
.source "LayoutInflaterCompatBase.java"


# direct methods
.method static a(Landroid/view/LayoutInflater;)Landroid/support/v4/view/LayoutInflaterFactory;
    .registers 3

    .prologue
    .line 49
    invoke-virtual {p0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v0

    .line 50
    instance-of v1, v0, Landroid/support/v4/view/LayoutInflaterCompatBase$FactoryWrapper;

    if-eqz v1, :cond_d

    .line 51
    check-cast v0, Landroid/support/v4/view/LayoutInflaterCompatBase$FactoryWrapper;

    iget-object v0, v0, Landroid/support/v4/view/LayoutInflaterCompatBase$FactoryWrapper;->a:Landroid/support/v4/view/LayoutInflaterFactory;

    .line 53
    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method static a(Landroid/view/LayoutInflater;Landroid/support/v4/view/LayoutInflaterFactory;)V
    .registers 3

    .prologue
    .line 45
    if-eqz p1, :cond_b

    new-instance v0, Landroid/support/v4/view/LayoutInflaterCompatBase$FactoryWrapper;

    invoke-direct {v0, p1}, Landroid/support/v4/view/LayoutInflaterCompatBase$FactoryWrapper;-><init>(Landroid/support/v4/view/LayoutInflaterFactory;)V

    :goto_7
    invoke-virtual {p0, v0}, Landroid/view/LayoutInflater;->setFactory(Landroid/view/LayoutInflater$Factory;)V

    .line 46
    return-void

    .line 45
    :cond_b
    const/4 v0, 0x0

    goto :goto_7
.end method
