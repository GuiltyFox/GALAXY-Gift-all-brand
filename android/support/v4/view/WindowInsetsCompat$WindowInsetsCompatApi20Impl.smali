.class Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatApi20Impl;
.super Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatBaseImpl;
.source "WindowInsetsCompat.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 148
    invoke-direct {p0}, Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatBaseImpl;-><init>()V

    .line 149
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Landroid/support/v4/view/WindowInsetsCompat;
    .registers 4

    .prologue
    .line 153
    new-instance v0, Landroid/support/v4/view/WindowInsetsCompat;

    .line 154
    invoke-static {p1}, Landroid/support/v4/view/WindowInsetsCompatApi20;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/view/WindowInsetsCompat;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public a(Ljava/lang/Object;IIII)Landroid/support/v4/view/WindowInsetsCompat;
    .registers 8

    .prologue
    .line 195
    new-instance v0, Landroid/support/v4/view/WindowInsetsCompat;

    invoke-static {p1, p2, p3, p4, p5}, Landroid/support/v4/view/WindowInsetsCompatApi20;->a(Ljava/lang/Object;IIII)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/view/WindowInsetsCompat;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public b(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 159
    invoke-static {p1}, Landroid/support/v4/view/WindowInsetsCompatApi20;->b(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 164
    invoke-static {p1}, Landroid/support/v4/view/WindowInsetsCompatApi20;->c(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public d(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 169
    invoke-static {p1}, Landroid/support/v4/view/WindowInsetsCompatApi20;->d(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public e(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 174
    invoke-static {p1}, Landroid/support/v4/view/WindowInsetsCompatApi20;->e(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public f(Ljava/lang/Object;)Z
    .registers 3

    .prologue
    .line 184
    invoke-static {p1}, Landroid/support/v4/view/WindowInsetsCompatApi20;->f(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
