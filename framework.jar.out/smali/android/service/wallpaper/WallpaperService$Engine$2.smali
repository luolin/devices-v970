.class Landroid/service/wallpaper/WallpaperService$Engine$2;
.super Lcom/android/internal/view/BaseInputHandler;
.source "WallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/wallpaper/WallpaperService$Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/service/wallpaper/WallpaperService$Engine;


# direct methods
.method constructor <init>(Landroid/service/wallpaper/WallpaperService$Engine;)V
    .locals 0
    .parameter

    .prologue
    .line 244
    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine$2;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-direct {p0}, Lcom/android/internal/view/BaseInputHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMotion(Landroid/view/MotionEvent;Landroid/view/InputQueue$FinishedCallback;)V
    .locals 3
    .parameter "event"
    .parameter "finishedCallback"

    .prologue
    .line 248
    const/4 v0, 0x0

    .line 250
    .local v0, handled:Z
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    .line 251
    .local v1, source:I
    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_0

    .line 252
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine$2;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    #calls: Landroid/service/wallpaper/WallpaperService$Engine;->dispatchPointer(Landroid/view/MotionEvent;)V
    invoke-static {v2, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->access$100(Landroid/service/wallpaper/WallpaperService$Engine;Landroid/view/MotionEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    const/4 v0, 0x1

    .line 256
    :cond_0
    invoke-virtual {p2, v0}, Landroid/view/InputQueue$FinishedCallback;->finished(Z)V

    .line 258
    return-void

    .line 256
    .end local v1           #source:I
    :catchall_0
    move-exception v2

    invoke-virtual {p2, v0}, Landroid/view/InputQueue$FinishedCallback;->finished(Z)V

    throw v2
.end method
