<template>
    <div id="container">
        <nav>
            <div id="buttons">
                <div id="minimize">
                    <img src="../assets/titlebar/- normal.png" >
                </div>
                <div id="close">
                    <img src="../assets/titlebar/x normal.png">
                </div>
            </div>
        </nav>
        <img class="banner" src="../assets/titlebar/barreentete1.png">
    </div>
</template>

<script>

export default {
    name: 'TitleBar',
    methods: {
    }
}
</script>

<style scoped>
img {
    user-select: none;
    -moz-user-select: none;
    -webkit-user-drag: none;
    -webkit-user-select: none;
    -ms-user-select: none;
}
#container {
    width: 1280px;
    height: 41px;
    display: block;
    position: relative;
    top: 0;
    left: 0;
    -webkit-app-region: drag;
}
#container nav {
    display: block;
    width: 100%;
    height: 30px;
    position: absolute;
}
#container nav #buttons{
    float: right;
    width: 100px;
    height: 100%;
    line-height: 30px;
    -webkit-app-region: no-drag;
}
#buttons #minimize, #buttons #close {
    float: left;
    width: 50px;
    height: 25px;
    margin: 0px 0 0 0;
    padding: 7px 0 0 0;
    text-align: center;
    transition: all ease-in-out .3s;
}
#buttons #minimize:hover {
    background-color: #e4e4e2;

}
#buttons #close:hover {
    background-color: #d51527;

}
span {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-size: monospace;
}
</style>