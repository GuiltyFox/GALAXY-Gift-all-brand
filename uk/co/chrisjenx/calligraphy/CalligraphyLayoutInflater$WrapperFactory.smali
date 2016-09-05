.class Luk/co/chrisjenx/calligraphy/CalligraphyLayoutInflater$WrapperFactory;
.super Ljava/lang/Object;
.source "CalligraphyLayoutInflater.java"

# interfaces
.implements Landroid/view/LayoutInflater$Factory;


# instance fields
.field private final a:Landroid/view/LayoutInflater$Factory;

.field private final b:Luk/co/chrisjenx/calligraphy/CalligraphyLayoutInflater;

.field private final c:Luk/co/chrisjenx/calligraphy/CalligraphyFactory;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater$Factory;Luk/co/chrisjenx/calligraphy/CalligraphyLayoutInflater;Luk/co/chrisjenx/calligraphy/CalligraphyFactory;)V
    .registers 4

    .prologue
    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    iput-object p1, p0, Luk/co/chrisjenx/calligraphy/CalligraphyLayoutInflater$WrapperFactory;->a:Landroid/view/LayoutInflater$Factory;

    .line 236
    iput-object p2, p0, Luk/co/chrisjenx/calligraphy/CalligraphyLayoutInflater$WrapperFactory;->b:Luk/co/chrisjenx/calligraphy/CalligraphyLayoutInflater;

    .line 237
    iput-object p3, p0, Luk/co/chrisjenx/calligraphy/CalligraphyLayoutInflater$WrapperFactory;->c:Luk/co/chrisjenx/calligraphy/CalligraphyFactory;

    .line 238
    return-void
.end method


# virtual methods
.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 11

    .prologue
    .line 242
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_1d

    .line 243
    iget-object v6, p0, Luk/co/chrisjenx/calligraphy/CalligraphyLayoutInflater$WrapperFactory;->c:Luk/co/chrisjenx/calligraphy/CalligraphyFactory;

    iget-object v0, p0, Luk/co/chrisjenx/calligraphy/CalligraphyLayoutInflater$WrapperFactory;->b:Luk/co/chrisjenx/calligraphy/CalligraphyLayoutInflater;

    const/4 v1, 0x0

    iget-object v2, p0, Luk/co/chrisjenx/calligraphy/CalligraphyLayoutInflater$WrapperFactory;->a:Landroid/view/LayoutInflater$Factory;

    .line 245
    invoke-interface {v2, p1, p2, p3}, Landroid/view/LayoutInflater$Factory;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 244
    invoke-static/range {v0 .. v5}, Luk/co/chrisjenx/calligraphy/CalligraphyLayoutInflater;->a(Luk/co/chrisjenx/calligraphy/CalligraphyLayoutInflater;Landroid/view/View;Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .line 243
    invoke-virtual {v6, v0, p2, p3}, Luk/co/chrisjenx/calligraphy/CalligraphyFactory;->a(Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .line 250
    :goto_1c
    return-object v0

    :cond_1d
    iget-object v0, p0, Luk/co/chrisjenx/calligraphy/CalligraphyLayoutInflater$WrapperFactory;->c:Luk/co/chrisjenx/calligraphy/CalligraphyFactory;

    iget-object v1, p0, Luk/co/chrisjenx/calligraphy/CalligraphyLayoutInflater$WrapperFactory;->a:Landroid/view/LayoutInflater$Factory;

    .line 251
    invoke-interface {v1, p1, p2, p3}, Landroid/view/LayoutInflater$Factory;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v1

    .line 250
    invoke-virtual {v0, v1, p2, p3}, Luk/co/chrisjenx/calligraphy/CalligraphyFactory;->a(Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    goto :goto_1c
.end method
