.class Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatApi20Impl;
.super Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatBaseImpl;
.source "WindowInsetsCompat.java"


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 144
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatBaseImpl;-><init>(Landroid/support/v4/view/WindowInsetsCompat$1;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/view/WindowInsetsCompat$1;)V
    .registers 2

    .prologue
    .line 144
    invoke-direct {p0}, Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatApi20Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Landroid/support/v4/view/WindowInsetsCompat;
    .registers 5

    .prologue
    .line 147
    new-instance v0, Landroid/support/v4/view/WindowInsetsCompat;

    .line 148
    invoke-static {p1}, Landroid/support/v4/view/WindowInsetsCompatApi20;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/support/v4/view/WindowInsetsCompat;-><init>(Ljava/lang/Object;Landroid/support/v4/view/WindowInsetsCompat$1;)V

    return-object v0
.end method

.method public a(Ljava/lang/Object;IIII)Landroid/support/v4/view/WindowInsetsCompat;
    .registers 9

    .prologue
    .line 189
    new-instance v0, Landroid/support/v4/view/WindowInsetsCompat;

    invoke-static {p1, p2, p3, p4, p5}, Landroid/support/v4/view/WindowInsetsCompatApi20;->a(Ljava/lang/Object;IIII)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/support/v4/view/WindowInsetsCompat;-><init>(Ljava/lang/Object;Landroid/support/v4/view/WindowInsetsCompat$1;)V

    return-object v0
.end method

.method public b(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 153
    invoke-static {p1}, Landroid/support/v4/view/WindowInsetsCompatApi20;->b(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 158
    invoke-static {p1}, Landroid/support/v4/view/WindowInsetsCompatApi20;->c(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public d(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 163
    invoke-static {p1}, Landroid/support/v4/view/WindowInsetsCompatApi20;->d(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public e(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 168
    invoke-static {p1}, Landroid/support/v4/view/WindowInsetsCompatApi20;->e(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
